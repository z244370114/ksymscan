import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../generated/l10n.dart';
import '../utils/pub_method.dart';

class ScanViewPage extends StatefulWidget {
  const ScanViewPage({super.key});

  @override
  State<ScanViewPage> createState() => _ScanViewPageState();
}

class _ScanViewPageState extends State<ScanViewPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).scanTitle),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: <Widget>[
                  if (result != null)
                    TextButton.icon(
                      onPressed: () {
                        PubMethodUtils.copyToClipboard(result!.code!);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(S.of(context).copySuccess)),
                        );
                      },
                      icon: const Icon(Icons.copy_outlined),
                      label: Text(
                          'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}'),
                    )
                  else
                    const Text('Scan a code'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: IconButton.filledTonal(
                          onPressed: () async {
                            await controller?.toggleFlash();
                            setState(() {});
                          },
                          icon: FutureBuilder(
                            future: controller?.getFlashStatus(),
                            builder: (context, snapshot) {
                              return Icon(
                                FontAwesomeIcons.boltLightning,
                                color: snapshot.data as bool
                                    ? Colors.white
                                    : Colors.black,
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: IconButton.filledTonal(
                          onPressed: () async {
                            await controller?.flipCamera();
                            setState(() {});
                          },
                          icon: FutureBuilder(
                            future: controller?.getCameraInfo(),
                            builder: (context, snapshot) {
                              return Icon(
                                FontAwesomeIcons.camera,
                                color: snapshot.data == null
                                    ? Colors.white
                                    : Colors.black,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.yellow,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../generated/l10n.dart';

class CreateViewPage extends StatefulWidget {
  final Map map;

  const CreateViewPage({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<CreateViewPage> createState() => _CreateViewPageState();
}

class _CreateViewPageState extends State<CreateViewPage> {
  late Symbology symbology;
  late String content;

  @override
  void initState() {
    super.initState();
    content = widget.map['content'];
    switch (widget.map['index']) {
      case 0:
        symbology = QRCode(
            codeVersion: QRCodeVersion.auto,
            inputMode: QRInputMode.alphaNumeric);
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
      case 7:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(S.of(context).lookPhoto),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 240,
              width: 240,
              child: QrImageView(
                data: content,
                version: QrVersions.auto,
                size: 240.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:typed_data';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:ksymscan/common/constants.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../common/application.dart';
import '../generated/l10n.dart';
import '../model/qr_bar_data.dart';
import '../utils/pub_method.dart';

class QrCreateViewPage extends StatefulWidget {
  final QrBarData qrBarData;

  const QrCreateViewPage({
    Key? key,
    required this.qrBarData,
  }) : super(key: key);

  @override
  State<QrCreateViewPage> createState() => _QrCreateViewPageState();
}

class _QrCreateViewPageState extends State<QrCreateViewPage> {
  late QrBarData qrBarData;

  final GlobalKey widgetKey = GlobalKey();

  var directoryPath = "";

  Color selectedColor = Colors.white;

  @override
  void initState() {
    super.initState();
    qrBarData = widget.qrBarData;
    switch (qrBarData.index) {
      case 0:
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
        title: Text(qrBarData.title!),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(12),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      child: RepaintBoundary(
                        key: boundaryKey,
                        child: QrImageView(
                          data: qrBarData.content!,
                          version: QrVersions.auto,
                          backgroundColor: selectedColor,
                          size: 200,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton.filledTonal(
                          onPressed: () async {
                            Map result =
                                await PubMethodUtils.saveWidgetAsImage();
                            directoryPath = result['filePath'];
                            final snackBar = SnackBar(
                              behavior: SnackBarBehavior.floating,
                              width: 400.0,
                              content: Text(result['isSuccess']
                                  ? S.of(context).saveSuccess
                                  : S.of(context).saveFail),
                              action: SnackBarAction(
                                label: S.of(context).close,
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          icon: const Icon(
                            Icons.download_rounded,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _openColorPicker();
                          },
                          child: Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: selectedColor,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () async {
                            Uint8List imageunit8 =
                                await PubMethodUtils.getImageUint8List();
                            final result = await Share.shareXFiles(
                                [XFile.fromData(imageunit8, mimeType: "png")],
                                text: 'Great picture');
                            if (result.status == ShareResultStatus.success) {
                              print('Thank you for sharing the picture!');
                            }
                          },
                          icon: const Icon(
                            Icons.share_outlined,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(12),
              elevation: 1,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: ListTile(
                      title: Text(
                        qrBarData.title!,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      leading: Icon(
                        IconData(
                          qrBarData.iconUrl!,
                          fontFamily: 'MaterialIcons',
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: qrBarData.contents!
                            .map(
                              (e) => Text(
                                e,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            )
                            .toList(),
                      ),
                      trailing: IconButton.filledTonal(
                        onPressed: () {
                          PubMethodUtils.copyToClipboard(
                              context, qrBarData.content!);
                        },
                        icon: Icon(
                          Icons.copy_outlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openColorPicker() async {
    Color color = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).pickAcolor),
          content: ColorPicker(
            color: selectedColor,
            onColorChanged: (Color color) {
              setState(() {
                selectedColor = color;
              });
            },
            enableTonalPalette: false,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(S.of(context).submits),
            ),
          ],
        );
      },
    );
    if (color != null) {
      setState(() {
        selectedColor = color;
      });
    }
  }
}

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ksymscan/utils/pub_method.dart';

import '../common/constants.dart';
import '../generated/l10n.dart';
import '../model/qr_bar_data.dart';
import '../utils/img_util.dart';

class BarCreateViewPage extends StatefulWidget {
  final QrBarData qrBarData;

  const BarCreateViewPage({
    Key? key,
    required this.qrBarData,
  }) : super(key: key);

  @override
  State<BarCreateViewPage> createState() => _BarCreateViewPageState();
}

class _BarCreateViewPageState extends State<BarCreateViewPage> {
  late QrBarData qrBarData;

  late Barcode barcode;

  @override
  void initState() {
    super.initState();
    qrBarData = widget.qrBarData;
    switch (qrBarData.index) {
      case 0:
        barcode = Barcode.code128();
        break;
      case 1:
        barcode = Barcode.code128(
          useCode128A: true,
          useCode128B: false,
          useCode128C: false,
        );
        break;
      case 2:
        barcode = Barcode.code128(
          useCode128A: false,
          useCode128B: true,
          useCode128C: false,
        );
        break;
      case 3:
        barcode = Barcode.code128(
          useCode128A: false,
          useCode128B: false,
          useCode128C: true,
        );
        break;
      case 4:
        barcode = Barcode.code39();
        break;
      case 5:
        barcode = Barcode.code93();
        break;
      case 6:
        barcode = Barcode.code93();
        break;
      case 7:
        barcode = Barcode.codabar();
        break;
      case 8:
        barcode = Barcode.ean13();
        break;
      case 9:
        barcode = Barcode.ean8();
        break;
      case 10:
        barcode = Barcode.upcA();
        break;
      case 11:
        barcode = Barcode.upcE();
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).lookPhoto),
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
                        child: BarcodeWidget(
                          barcode: barcode,
                          data: qrBarData.content!,
                          width: 200,
                          height: 200,
                          errorBuilder: (context, error) =>
                              Center(child: Text(error)),
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
                          icon: Icon(
                            Icons.download_rounded,
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () {

                          },
                          icon: Icon(
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
                      leading: Image(
                        image: ImgUtil.getAssetImage(qrBarData.imgUrl!),
                        width: 50,
                        height: 50,
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
                          PubMethodUtils.copyToClipboard(qrBarData.content!);
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
}

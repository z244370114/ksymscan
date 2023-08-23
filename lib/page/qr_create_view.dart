import 'package:flutter/material.dart';
import 'package:ksymscan/common/constants.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../generated/l10n.dart';

class QrCreateViewPage extends StatefulWidget {
  final Map map;

  const QrCreateViewPage({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<QrCreateViewPage> createState() => _QrCreateViewPageState();
}

class _QrCreateViewPageState extends State<QrCreateViewPage> {
  late String content;
  late String title;
  late QrTypeEnum qrTypeEnum;

  @override
  void initState() {
    super.initState();
    title = widget.map['title'];
    content = widget.map['content'];
    qrTypeEnum = widget.map['enumType'];
    switch (widget.map['index']) {
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
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
                      child: QrImageView(
                        data: content,
                        version: QrVersions.auto,
                        size: 200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton.filledTonal(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download_rounded,
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: () {},
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
                      title: Text("电话"),
                      subtitle: Text("15972252248"),
                      trailing: IconButton.filledTonal(
                        onPressed: () {},
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

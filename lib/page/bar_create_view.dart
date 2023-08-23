import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../generated/l10n.dart';

class BarCreateViewPage extends StatefulWidget {
  final Map map;

  const BarCreateViewPage({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<BarCreateViewPage> createState() => _BarCreateViewPageState();
}

class _BarCreateViewPageState extends State<BarCreateViewPage> {
  late String content;

  @override
  void initState() {
    super.initState();
    content = widget.map['content'];
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
        title: Text(S.of(context).lookPhoto),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(12),
              elevation: 1,
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
                ],
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
                      trailing: Icon(Icons.copy_all_outlined),
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

import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class BarCodeViewPage extends StatefulWidget {
  const BarCodeViewPage({super.key});

  @override
  State<BarCodeViewPage> createState() => _BarCodeViewPageState();
}

class _BarCodeViewPageState extends State<BarCodeViewPage> {
  List<Map> data = [
    {
      "title": "",
      "url": "",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  initTitle() {
    var title = S.of(context).qrTitle.split('，');

  }

  @override
  Widget build(BuildContext context) {
    initTitle();
    return const Placeholder();
  }
}

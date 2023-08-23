import 'package:flutter/material.dart';
import 'package:ksymscan/common/application.dart';

import '../common/c_key.dart';
import '../model/qr_bar_data.dart';

class HistoryViewPage extends StatefulWidget {
  const HistoryViewPage({super.key});

  @override
  State<HistoryViewPage> createState() => _HistoryViewPageState();
}

class _HistoryViewPageState extends State<HistoryViewPage> {
  var listQrbarData = [];

  @override
  void initState() {
    super.initState();
    if (Application.getStorage.hasData(CKey.listQrBarData)) {
      listQrbarData =
          Application.getStorage.read(CKey.listQrBarData) as List<QrBarData>;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.all(12),
        elevation: 1,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 0),
          itemExtent: 100,
          itemCount: listQrbarData.length,
          itemBuilder: (context, index) => _buildItem(listQrbarData[index]),
        ),
      ),
    );
  }

  _buildItem(listQrbarData) {}
}

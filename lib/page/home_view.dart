import 'package:flutter/material.dart';
import 'package:ksymscan/page/bar_view.dart';
import 'package:ksymscan/page/qr_view.dart';

import '../generated/l10n.dart';
import 'history_view.dart';
import 'settings_view.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key});

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage>
    with SingleTickerProviderStateMixin {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  final List<Widget> screens = [
    QrCodeViewPage(),
    BarCodeViewPage(),
    HistoryViewPage(),
    SettingsViewPage(),
  ];
  final List<String> title = [];

  @override
  void initState() {
    super.initState();
  }

  initTitle() {
    title.add(S.of(context).qrcode);
    title.add(S.of(context).barcode);
    title.add(S.of(context).history);
    title.add(S.of(context).setting);
  }

  @override
  Widget build(BuildContext context) {
    initTitle();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title[currentPageIndex]),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        height: 70,
        elevation: 2,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.qr_code),
            label: S.of(context).qrcode,
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.barcode_reader),
            label: S.of(context).barcode,
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.history),
            label: S.of(context).history,
          ),
          NavigationDestination(
            tooltip: "",
            icon: Icon(Icons.settings),
            label: S.of(context).setting,
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: screens,
      ),
    );
  }
}

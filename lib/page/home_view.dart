import 'package:flutter/material.dart';
import 'package:ksymscan/common/application.dart';
import 'package:ksymscan/model/app_info_data.dart';
import 'package:ksymscan/page/bar_view.dart';
import 'package:ksymscan/page/qr_view.dart';
import 'package:ksymscan/utils/pub_method.dart';

import '../common/c_key.dart';
import '../generated/l10n.dart';
import '../model/qr_bar_data.dart';
import '../utils/event_bus.dart';
import 'history_view.dart';
import 'me_view.dart';
import 'scan_view.dart';
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
    MeViewPage(),
  ];
  final List<String> title = [];

  @override
  void initState() {
    super.initState();
    PubMethodUtils.umengCommonSdkInit();
  }

  initTitle() {
    title.add(S.of(context).qrcode);
    title.add(S.of(context).barcode);
    title.add(S.of(context).history);
    title.add(S.of(context).me);
  }

  @override
  Widget build(BuildContext context) {
    initTitle();
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title[currentPageIndex]),
        actions: [
          currentPageIndex == 2
              ? Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      openDialog(context);
                    },
                    child: Icon(Icons.delete),
                  ),
                )
              : Container()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanViewPage(),
            ),
          );
        },
        child: Icon(Icons.qr_code_scanner_rounded),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        height: 70,
        elevation: 2,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            if (index == 2) {
              EventBus.getDefault().post('isHistory');
            }
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
            icon: Icon(Icons.person_2_sharp),
            label: S.of(context).me,
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: screens,
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(S.of(context).clearHistory),
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).submits),
            onPressed: () {
              EventBus.getDefault().post("clear");
              Navigator.of(context).pop();
            },
          ),
          FilledButton(
            child: Text(S.of(context).cancel),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ksymscan/model/app_info_data.dart';
import 'package:ksymscan/plugin/method_plugin.dart';

import '../generated/l10n.dart';
import '../utils/img_util.dart';

class AboutViewPage extends StatefulWidget {
  const AboutViewPage({super.key});

  @override
  State<AboutViewPage> createState() => _AboutViewPageState();
}

class _AboutViewPageState extends State<AboutViewPage> {
  late AppInfo appInfo;

  @override
  void initState() {
    super.initState();
    MethodPlugin.appInfo.then((value) {
      setState(() {
        appInfo = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).aboutUs),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(12),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: ImgUtil.getAssetImage('ic_launcher_playstore'),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    S.of(context).appName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "版本：v${appInfo.versionName}",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

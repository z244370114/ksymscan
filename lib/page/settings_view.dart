import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class SettingsViewPage extends StatefulWidget {
  const SettingsViewPage({super.key});

  @override
  State<SettingsViewPage> createState() => _SettingsViewPageState();
}

class _SettingsViewPageState extends State<SettingsViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.sentiment_satisfied),
            label: Container(
              width: double.infinity,
              child: Text(S.of(context).aboutUs),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.sentiment_satisfied),
            label: Container(
              width: double.infinity,
              child: Text(S.of(context).givePraise),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.thumb_up),
            label: Container(
              width: double.infinity,
              child: Text(S.of(context).givePraise),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
            label: Container(
              width: double.infinity,
              child: Text(S.of(context).shareApp),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   child: Card(
          //     margin: const EdgeInsets.only(top: 12),
          //     elevation: 1,
          //     child: Text(S.of(context).wfIntroduction),
          //   ),
          // ),
          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   child: Card(
          //     margin: const EdgeInsets.only(top: 12),
          //     elevation: 1,
          //     child: Text(S.of(context).givePraise),
          //   ),
          // ),
        ],
      ),
    );
  }
}

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
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: Card(
              margin: const EdgeInsets.only(top: 12),
              elevation: 1,
              child: Text(S.of(context).wfIntroduction),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Card(
              margin: const EdgeInsets.only(top: 12),
              elevation: 1,
              child: Text(S.of(context).givePraise),
            ),
          ),
          TextButton.icon(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.white70)),
                alignment: Alignment.centerLeft,
                minimumSize: MaterialStateProperty.all(const Size(200, 50))),
            icon: const Icon(
              Icons.deck_rounded,
              color: Colors.white70,
            ),
            label: Text(
              S.of(context).aboutUs,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

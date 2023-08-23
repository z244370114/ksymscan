import 'package:flutter/material.dart';

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
      child: Card(
        margin: const EdgeInsets.all(12),
        elevation: 1,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QrCodeViewPage extends StatefulWidget {
  const QrCodeViewPage({super.key});

  @override
  State<QrCodeViewPage> createState() => _QrCodeViewPageState();
}

class _QrCodeViewPageState extends State<QrCodeViewPage> {
  List<Map> data = [
    {
      "title": "Code 128A",
      "url": "",
    },
    {
      "title": "Code 128B",
      "url": "",
    },
    {
      "title": "Code 128C",
      "url": "",
    },
    {
      "title": "Code 39",
      "url": "",
    },
    {
      "title": "Code 93",
      "url": "",
    },
    {
      "title": "Code 39 Extended",
      "url": "",
    },
    {
      "title": "Codabar",
      "url": "",
    },
    {
      "title": "Code 128",
      "url": "",
    },
    {
      "title": "EAN-13",
      "url": "",
    },
    {
      "title": "EAN-8",
      "url": "",
    },
    {
      "title": "UPC-A",
      "url": "",
    },
    {
      "title": "UPC-E",
      "url": "",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(12),
            elevation: 1,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              children: data.map((e) => _buildItem(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(Map item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add),
        Text(
          item["title"],
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

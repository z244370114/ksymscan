import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/img_util.dart';

class BarCodeViewPage extends StatefulWidget {
  const BarCodeViewPage({super.key});

  @override
  State<BarCodeViewPage> createState() => _BarCodeViewPageState();
}

class _BarCodeViewPageState extends State<BarCodeViewPage> {
  List<String> imageUrl = [
    'code128',
    'code128-a',
    'code128-a',
    'code128-a',
    'code39',
    'code93',
    'code39extended',
    'codabar',
    'ean13',
    'ean8',
    'upc-a',
    'upc-e',
  ];

  var title = [];

  @override
  void initState() {
    super.initState();
  }

  initTitle() {
    title = S.of(context).barTitle.split(',');
    print(title.toString());
  }

  @override
  Widget build(BuildContext context) {
    initTitle();
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(12),
            elevation: 1,
            child: GridView.builder(
                itemCount: imageUrl.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, //
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _buildItem(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: ImgUtil.getAssetImage(imageUrl[index]),
          width: 50,
          height: 50,
        ),
        Text(
          title[index],
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../common/application.dart';
import '../generated/l10n.dart';
import '../model/qr_bar_data.dart';
import '../utils/img_util.dart';
import '../widget/clear_button.dart';
import 'bar_create_view.dart';

class BarCodeViewPage extends StatefulWidget {
  const BarCodeViewPage({super.key});

  @override
  State<BarCodeViewPage> createState() => _BarCodeViewPageState();
}

class _BarCodeViewPageState extends State<BarCodeViewPage> {
  List<String> imageUrl = [
    'code128-a',
    'code128-a',
    'code128-a',
    'code128',
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
  var hintTexts = [];
  var selectTitleIndex = 0;

  final List<TextEditingController> editingController = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 12; i++) {
      editingController.add(TextEditingController());
    }
  }

  initTitle() {
    title = S.of(context).barTitle.split(',');
    hintTexts.add(S.of(context).hintTextCode128Auto);
    hintTexts.add(S.of(context).hintTextCode128A);
    hintTexts.add(S.of(context).hintTextCode128B);
    hintTexts.add(S.of(context).hintTextCode128C);
    hintTexts.add(S.of(context).hintTextCode39);
    hintTexts.add(S.of(context).hintTextCode93);
    hintTexts.add(S.of(context).hintTextExtended);
    hintTexts.add(S.of(context).hintTextCodabar);
    hintTexts.add(S.of(context).hintTextEAN13);
    hintTexts.add(S.of(context).hintTextEAN8);
    hintTexts.add(S.of(context).hintTextUPCA);
    hintTexts.add(S.of(context).hintTextUPCE);
  }

  @override
  Widget build(BuildContext context) {
    initTitle();
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[100],
      child: SingleChildScrollView(
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
                },
              ),
            ),
            Title(
              color: Colors.black,
              child: Text(
                title[selectTitleIndex],
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(12),
              elevation: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: _contentWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectTitleIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: ImgUtil.getAssetImage(imageUrl[index]),
            width: 50,
            height: 50,
          ),
          Text(
            title[index],
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  _contentWidget() => Column(
        children: [
          _textField(
            editingController[selectTitleIndex],
            title[selectTitleIndex],
            hintTexts[selectTitleIndex],
            Icons.text_fields_outlined,
          ),
          _createButton(),
        ],
      );

  _createButton() => Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
    child: ElevatedButton(
      onPressed: () {
        if (editingController[selectTitleIndex].text.isEmpty) {
          final snackBar = SnackBar(
            content: Text(S.of(context).hintTextNull),
            action: SnackBarAction(
              label: S.of(context).close,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          return;
        }

        var qrBarData = QrBarData();
        qrBarData.imgUrl = imageUrl[selectTitleIndex];
        qrBarData.title = title[selectTitleIndex];
        qrBarData.index = selectTitleIndex;
        // qrBarData.enumType = QrTypeEnum.values[selectTitleIndex];
        qrBarData.content = editingController[selectTitleIndex].text;
        qrBarData.contents = [editingController[selectTitleIndex].text];
        Application.addQrBarData(qrBarData);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BarCreateViewPage(
              qrBarData: qrBarData,
            ),
          ),
        );
      },
      child: Text(S.of(context).btnCreate),
    ),
  );

  _textField(
    TextEditingController textEditingController,
    String label,
    String hintText,
    IconData iconData, {
    String? helpText,
    TextInputType? textInputType = TextInputType.multiline,
    int? maxLines = 5,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: textEditingController,
        textInputAction: TextInputAction.next,
        keyboardType: textInputType,
        maxLines: maxLines,
        minLines: 1,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(iconData),
          iconColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
          helperText: helpText,
          helperStyle: TextStyle(color: Colors.grey, fontSize: 15),
          suffixIcon: ClearButton(controller: textEditingController),
        ),
        onEditingComplete: () {},
        onChanged: (v) {},
      ),
    );
  }
}

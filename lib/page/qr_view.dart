import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

import '../generated/l10n.dart';
import '../widget/clear_button.dart';
import 'create_view.dart';

class QrCodeViewPage extends StatefulWidget {
  const QrCodeViewPage({super.key});

  @override
  State<QrCodeViewPage> createState() => _QrCodeViewPageState();
}

class _QrCodeViewPageState extends State<QrCodeViewPage> {
  List<IconData> imageUrl = [
    Icons.text_fields_sharp,
    Icons.person_2_sharp,
    Icons.email_rounded,
    Icons.phone_android_rounded,
    Icons.web_outlined,
    Icons.wifi_password_rounded,
    Icons.sms_rounded,

    // 'qrcode_txt',
    // 'qrcode_mingpian',
    // 'qrcode_email',
    // 'qrcode_phone',
    // 'qrcode_wangzhi',
    // 'qrcode_wpa_wpa2',
    // 'qrcode_sms'
  ];

  var title = [];

  var selectTitleIndex = 0;

  final TextEditingController _controllerTxtFilled = TextEditingController();
  final TextEditingController _controllerNameFilled = TextEditingController();
  final TextEditingController _controllerPhoneFilled = TextEditingController();
  final TextEditingController _controllerFirmFilled = TextEditingController();
  final TextEditingController _controllerPostsFilled = TextEditingController();
  final TextEditingController _controllerEmailFilled = TextEditingController();
  final TextEditingController _controllerAddressFilled =
      TextEditingController();
  final TextEditingController _controllerOutlined = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  initTitle() {
    title = S.of(context).qrTitle.split(',');
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
          Title(color: Colors.black, child: Text(title[selectTitleIndex])),
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
    );
  }

  _buildItem(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectTitleIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            imageUrl[index],
            size: 25,
          ),
          Text(
            title[index],
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  _contentWidget() {
    switch (selectTitleIndex) {
      case 0:
        return _txtWidget();
      case 1:
        return _mingpianWidget();
    }
  }

  /// 文本二维码
  _txtWidget() => Column(
        children: [
          _textField(
            _controllerTxtFilled,
            S.of(context).labelText,
            S.of(context).hintText,
            Icons.text_fields_sharp,
          ),
          _createButton(),
        ],
      );

  _mingpianWidget() => Column(
        children: [
          _textField(
            _controllerNameFilled,
            S.of(context).labelName,
            S.of(context).hintTextName,
            Icons.account_box_outlined,
          ),
          _textField(
            _controllerPhoneFilled,
            S.of(context).labelPhone,
            S.of(context).hintTextPhone,
            Icons.phone_android_outlined,
          ),
          _textField(
            _controllerFirmFilled,
            S.of(context).labelFirm,
            S.of(context).hintTextFirm,
            Icons.location_on_outlined,
          ),
          _textField(
            _controllerPostsFilled,
            S.of(context).labelPosts,
            S.of(context).hintTextPosts,
            Icons.grade_outlined,
          ),
          _textField(
            _controllerEmailFilled,
            S.of(context).labelEmail,
            S.of(context).hintTextEmail,
            Icons.email_outlined,
          ),
          _textField(
            _controllerAddressFilled,
            S.of(context).labelAddress,
            S.of(context).hintTextAddress,
            Icons.my_location,
          ),
          _createButton(),
        ],
      );

  _createButton() => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          onPressed: () {
            var maps = {
              "title": title[selectTitleIndex],
              "index": selectTitleIndex,
              "content": _controllerTxtFilled.text,
            };
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateViewPage(
                  map: maps,
                ),
              ),
            );
          },
          child: Text(S.of(context).btnCreate),
        ),
      );

  _textField(TextEditingController textEditingController, String label,
      String hintText, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: textEditingController,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(iconData),
          iconColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
          suffixIcon: ClearButton(controller: textEditingController),
        ),
        onEditingComplete: () {},
        onChanged: (v) {},
        onSubmitted: (v) {},
      ),
    );
  }
}

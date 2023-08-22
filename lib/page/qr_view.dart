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
    Icons.android_outlined,
  ];
  var title = [];
  var selectTitleIndex = 0;

  final TextEditingController _controllerTxtFilled = TextEditingController();
  final TextEditingController _controllerNameFilled = TextEditingController();
  final TextEditingController _controllerPhoneFilled = TextEditingController();
  final TextEditingController _controllerFirmFilled = TextEditingController();
  final TextEditingController _controllerPostsFilled = TextEditingController();
  final TextEditingController _controllerEmailFilled = TextEditingController();
  final TextEditingController _controllerEmailFilledOne =
      TextEditingController();
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
    return SingleChildScrollView(
      child: Container(
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
      case 2:
        return _emailWidget();
      case 3:
        return _phoneWidget();
      case 4:
        return _wangzhiWidget();
      case 5:
        return _wifiWidget();
      case 6:
        return _smsWidget();
      case 7:
        return _appWidget();
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

  ///名片
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
            helpText: "+86155*****333",
            textInputType: TextInputType.phone,
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
            helpText: "copy@outlook.com",
            textInputType: TextInputType.emailAddress,
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

  ///邮箱
  _emailWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelEmail,
            S.of(context).hintTextEmail,
            Icons.email_outlined,
            helpText: "***@outlook.com / ***@qq.com",
            textInputType: TextInputType.emailAddress,
          ),
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelUrl,
            S.of(context).hintTextUrl,
            Icons.line_axis_outlined,
            helpText: "***@outlook.com / ***@qq.com",
            textInputType: TextInputType.emailAddress,
          ),
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelZhuTi,
            S.of(context).labelZhuTi,
            Icons.title_outlined,
          ),
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelText,
            S.of(context).hintText,
            Icons.text_fields_outlined,
          ),
          _createButton(),
        ],
      );

  _phoneWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelPhone,
            S.of(context).hintTextPhone,
            Icons.phone_android_outlined,
            helpText: "+86155*****333",
            textInputType: TextInputType.phone,
          ),
          _createButton(),
        ],
      );

  _wangzhiWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelUrl,
            S.of(context).hintTextUrl,
            Icons.line_axis_outlined,
            helpText: "http://,https://",
            textInputType: TextInputType.url,
          ),
          _createButton(),
        ],
      );

  _wifiWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelWifiName,
            S.of(context).hintTextWifi,
            Icons.network_cell_outlined,
          ),
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelWifiPassword,
            S.of(context).hintTextPassword,
            Icons.password_outlined,
            textInputType: TextInputType.visiblePassword,
          ),
          _createButton(),
        ],
      );

  _smsWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelSjr,
            S.of(context).hintTextPhone,
            Icons.person,
            helpText: "+86155*****333",
            textInputType: TextInputType.phone,
          ),
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelText,
            S.of(context).hintText,
            Icons.text_fields_sharp,
          ),
          _createButton(),
        ],
      );

  _appWidget() => Column(
        children: [
          _textField(
            _controllerEmailFilledOne,
            S.of(context).labelApp,
            S.of(context).hintTextUrl,
            Icons.person,
            helpText:
                "https://play.google.com/store/apps/details?id=com.xhx.woodenfishs",
            textInputType: TextInputType.url,
          ),
          _createButton(),
        ],
      );

  _createButton() => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          onPressed: () {
            // 'tel:+1234567890', // 替换为您的电话号码
            // sms:+1234567890
            // 'WIFI:T:WPA;S:MyWiFi;P:password;;', // 替换为您的Wi-Fi配置
            // 'mailto:example@example.com?cc=example2@example.com&subject=Hello&body=Hello%20World',
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
      String hintText, IconData iconData,
      {String? helpText,
      TextInputType? textInputType = TextInputType.multiline}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: textEditingController,
        maxLines: null,
        keyboardType: textInputType,
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
        onSubmitted: (v) {},
      ),
    );
  }
}

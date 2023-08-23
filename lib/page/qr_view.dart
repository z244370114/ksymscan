import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../generated/l10n.dart';
import '../widget/clear_button.dart';
import '../widget/vcard/v_card.dart';
import 'qr_create_view.dart';

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

  final List<TextEditingController> editingController = [];
  StringBuffer content = StringBuffer("");

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 18; i++) {
      editingController.add(TextEditingController());
    }
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
            editingController[0],
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
            editingController[1],
            S.of(context).labelName,
            S.of(context).hintTextName,
            Icons.account_box_outlined,
          ),
          _textField(
            editingController[2],
            S.of(context).labelPhone,
            S.of(context).hintTextPhone,
            Icons.phone_android_outlined,
            helpText: "+86155*****333",
            textInputType: TextInputType.phone,
          ),
          _textField(
            editingController[3],
            S.of(context).labelFirm,
            S.of(context).hintTextFirm,
            Icons.location_on_outlined,
          ),
          _textField(
            editingController[4],
            S.of(context).labelPosts,
            S.of(context).hintTextPosts,
            Icons.grade_outlined,
          ),
          _textField(
            editingController[5],
            S.of(context).labelEmail,
            S.of(context).hintTextEmail,
            Icons.email_outlined,
            helpText: "copy@gmail.com",
            textInputType: TextInputType.emailAddress,
          ),
          _textField(
            editingController[6],
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
            editingController[7],
            S.of(context).labelEmail,
            S.of(context).hintTextEmail,
            Icons.email_outlined,
            helpText: "copy@gmail.com",
            textInputType: TextInputType.emailAddress,
          ),
          _textField(
            editingController[8],
            S.of(context).labelEmailAdd,
            S.of(context).hintTextEmail,
            Icons.email_outlined,
            helpText: "copy@gmail.com",
            textInputType: TextInputType.emailAddress,
          ),
          _textField(
            editingController[9],
            S.of(context).labelZhuTi,
            S.of(context).labelZhuTi,
            Icons.title_outlined,
          ),
          _textField(
            editingController[10],
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
            editingController[11],
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
            editingController[12],
            S.of(context).labelUrl,
            S.of(context).hintTextUrl,
            Icons.link_outlined,
            helpText: "http://,https://",
            textInputType: TextInputType.url,
          ),
          _createButton(),
        ],
      );

  WifiEnum wifiEnumView = WifiEnum.wap2;

  _wifiWidget() => Column(
        children: [
          SegmentedButton<WifiEnum>(
            segments: const <ButtonSegment<WifiEnum>>[
              ButtonSegment<WifiEnum>(
                value: WifiEnum.wap2,
                label: Text('WPA2'),
              ),
              ButtonSegment<WifiEnum>(
                value: WifiEnum.wap3,
                label: Text('WPA3'),
              ),
              ButtonSegment<WifiEnum>(
                value: WifiEnum.wep,
                label: Text('WEP'),
              ),
            ],
            selected: {wifiEnumView},
            onSelectionChanged: (newSelection) {
              setState(() {
                wifiEnumView = newSelection.first;
                print(wifiEnumView);
              });
            },
          ),
          _textField(
            editingController[13],
            S.of(context).labelWifiName,
            S.of(context).hintTextWifi,
            Icons.network_cell_outlined,
          ),
          _textField(
            editingController[14],
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
            editingController[15],
            S.of(context).labelSjr,
            S.of(context).hintTextPhone,
            Icons.person,
            helpText: "+86155*****333",
            textInputType: TextInputType.phone,
          ),
          _textField(
            editingController[16],
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
            editingController[17],
            S.of(context).labelApp,
            S.of(context).hintTextUrl,
            Icons.link_outlined,
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
            content.clear();
            switch (selectTitleIndex) {
              case 0:
                content.write(editingController[0].text);
                break;
              case 1:
                final vCard = VCard();
                vCard.firstName = editingController[1].text;
                vCard.workPhone = editingController[2].text;
                vCard.organization = editingController[3].text;
                vCard.jobTitle = editingController[4].text;
                vCard.email = editingController[5].text;
                vCard.workAddress.street = editingController[6].text;
                content.write(vCard.getFormattedString());
                break;
              case 2:
                // 'mailto:example@example.com?cc=example2@example.com&subject=Hello&body=Hello%20World',
                content.write("mailto:");
                content.write(editingController[7].text);
                content.write("?cc=");
                content.write(editingController[8].text);
                content.write("&subject=");
                content.write(editingController[9].text);
                content.write("&body=");
                content.write(editingController[10].text);
                break;
              case 3:
                // 'tel:+1234567890', // 替换为您的电话号码
                content.write("tel:");
                content.write(editingController[11].text);
                break;
              case 4:
                content.write(editingController[12].text);
                break;
              case 5:
                // WIFI:T:WPA;S:MyWiFi;P:password;;
                content.write("WIFI:T:");
                content.write(wifiEnumView.name);
                content.write("S:");
                content.write(editingController[12].text);
                content.write("P:");
                content.write(editingController[13].text);
                content.write(";;");
                break;
              case 6:
                // sms:+1234567890
                content.write("sms:");
                content.write(editingController[15].text);
                content.write("?body=");
                content.write(editingController[16].text);
                break;
              case 7:
                content.write(editingController[17].text);
                break;
            }

            var maps = {
              "title": title[selectTitleIndex],
              "index": selectTitleIndex,
              "enumType": QrTypeEnum.values[selectTitleIndex],
              "content": content.toString(),
            };
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QrCreateViewPage(
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
      padding: const EdgeInsets.only(top: 20),
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

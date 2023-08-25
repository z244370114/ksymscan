// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutUs": MessageLookupByLibrary.simpleMessage("关于我们"),
        "agree": MessageLookupByLibrary.simpleMessage("同意"),
        "appName": MessageLookupByLibrary.simpleMessage("二维码和条形码制作"),
        "barTitle": MessageLookupByLibrary.simpleMessage(
            "Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E"),
        "barcode": MessageLookupByLibrary.simpleMessage("条形码"),
        "btnCreate": MessageLookupByLibrary.simpleMessage("开始制作"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "clearHistory": MessageLookupByLibrary.simpleMessage("确定要删除所有历史记录吗？"),
        "close": MessageLookupByLibrary.simpleMessage("关闭"),
        "copySuccess": MessageLookupByLibrary.simpleMessage("复制成功"),
        "givePraise": MessageLookupByLibrary.simpleMessage("给好评"),
        "hello": MessageLookupByLibrary.simpleMessage("你好！"),
        "hintText": MessageLookupByLibrary.simpleMessage("请输入文本"),
        "hintTextAddress": MessageLookupByLibrary.simpleMessage("请输入地址"),
        "hintTextCodabar": MessageLookupByLibrary.simpleMessage(
            "字符集包括数字和- \$ :/.+ 以及ABCD等字符，其中ABCD只用于开始或者结尾，作为标识符使用。"),
        "hintTextCode11": MessageLookupByLibrary.simpleMessage(
            "条码 只允许11种字元，分别是0-9和 `-`,为降低检查错误率，可使用两位的检验码。"),
        "hintTextCode128A":
            MessageLookupByLibrary.simpleMessage("字符集 包括大写字母、数字、常用标点符号和一些控制符。"),
        "hintTextCode128Auto":
            MessageLookupByLibrary.simpleMessage("是将上述三种字符集最佳优化组合。"),
        "hintTextCode128B":
            MessageLookupByLibrary.simpleMessage("字符集 包括大小写字母、数字、常用标点符号。"),
        "hintTextCode128C": MessageLookupByLibrary.simpleMessage("字符集 为纯数字序列。"),
        "hintTextCode39": MessageLookupByLibrary.simpleMessage(
            "条码生成字符集包括数字 、大写字母以及- . \$ / + % * 空格等字符,其中 * 只用于标记开始和结束。"),
        "hintTextCode93": MessageLookupByLibrary.simpleMessage(
            "条码生成是 full ASCII 模式，可使用ASCII全部128个字符。"),
        "hintTextEAN128": MessageLookupByLibrary.simpleMessage(
            "条码生成 是由UPC/EAN指定代表意义规则的128码，编码方式同code128条码。"),
        "hintTextEAN13": MessageLookupByLibrary.simpleMessage(
            "商品条码是纯数字，而且位数是12位，在编码过后外加一位校验码，组成13位数字。"),
        "hintTextEAN8": MessageLookupByLibrary.simpleMessage(
            "商品条码是纯数字，而且位数是7位，在编码过后外加一位校验码，组成8位数字。"),
        "hintTextEmail": MessageLookupByLibrary.simpleMessage("请输入邮箱"),
        "hintTextExtended": MessageLookupByLibrary.simpleMessage(
            "包含大写字母（A-Z）、数字（0-9）以及特殊符号（如空格、破折号、点号、美元符号等）"),
        "hintTextFirm": MessageLookupByLibrary.simpleMessage("请输入公司名称"),
        "hintTextMSI":
            MessageLookupByLibrary.simpleMessage("条形码 必须是纯的数字0-9，带有一位检验码。"),
        "hintTextName": MessageLookupByLibrary.simpleMessage("请输入姓名"),
        "hintTextNull": MessageLookupByLibrary.simpleMessage("输入不能为空，请重新输入"),
        "hintTextPassword": MessageLookupByLibrary.simpleMessage("密码"),
        "hintTextPhone": MessageLookupByLibrary.simpleMessage("请输入电话"),
        "hintTextPosts": MessageLookupByLibrary.simpleMessage("请输入职位"),
        "hintTextUPCA": MessageLookupByLibrary.simpleMessage(
            "条码商品条码是纯数字，而且位数是11位，在编码过后外加一位校验码，组成12位数字,主要在美国和加拿大使用。"),
        "hintTextUPCE": MessageLookupByLibrary.simpleMessage(
            " 条码商品条码是纯数字，是由UPC-A缩减而成，位数是7位，而且首位必须为0，在编码过后外加一位校验码，组成8位数字。"),
        "hintTextUrl": MessageLookupByLibrary.simpleMessage("请输入网址"),
        "hintTextWifi": MessageLookupByLibrary.simpleMessage("网络"),
        "history": MessageLookupByLibrary.simpleMessage("历史记录"),
        "home": MessageLookupByLibrary.simpleMessage("首页"),
        "labelAddress": MessageLookupByLibrary.simpleMessage("地址"),
        "labelApp": MessageLookupByLibrary.simpleMessage("应用地址"),
        "labelEmail": MessageLookupByLibrary.simpleMessage("邮箱"),
        "labelEmailAdd": MessageLookupByLibrary.simpleMessage("抄送邮箱"),
        "labelFirm": MessageLookupByLibrary.simpleMessage("公司名称"),
        "labelName": MessageLookupByLibrary.simpleMessage("姓名"),
        "labelPhone": MessageLookupByLibrary.simpleMessage("电话"),
        "labelPosts": MessageLookupByLibrary.simpleMessage("职位"),
        "labelSjr": MessageLookupByLibrary.simpleMessage("收件人"),
        "labelText": MessageLookupByLibrary.simpleMessage("纯文本"),
        "labelUrl": MessageLookupByLibrary.simpleMessage("网址"),
        "labelWifiName": MessageLookupByLibrary.simpleMessage("网络名称"),
        "labelWifiPassword": MessageLookupByLibrary.simpleMessage("密码"),
        "labelZhuTi": MessageLookupByLibrary.simpleMessage("主题"),
        "lookPhoto": MessageLookupByLibrary.simpleMessage("预览图片"),
        "me": MessageLookupByLibrary.simpleMessage("我的"),
        "noData": MessageLookupByLibrary.simpleMessage("暂无历史记录"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("隐私政策"),
        "qrTitle": MessageLookupByLibrary.simpleMessage(
            "纯文本,名片,邮箱,手机号,网址,Wi-Fi,短信,应用"),
        "qrcode": MessageLookupByLibrary.simpleMessage("二维码"),
        "saveFail": MessageLookupByLibrary.simpleMessage("保存失败"),
        "saveSuccess": MessageLookupByLibrary.simpleMessage("保存成功"),
        "scanTitle": MessageLookupByLibrary.simpleMessage("扫描"),
        "setting": MessageLookupByLibrary.simpleMessage("设置"),
        "shareApp": MessageLookupByLibrary.simpleMessage("分享应用"),
        "submits": MessageLookupByLibrary.simpleMessage("确定"),
        "userAgreement": MessageLookupByLibrary.simpleMessage("用户协议"),
        "version": MessageLookupByLibrary.simpleMessage("版本"),
        "wfIntroduction": MessageLookupByLibrary.simpleMessage("简介")
      };
}

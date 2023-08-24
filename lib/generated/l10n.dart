// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `二维码和条形码制作`
  String get appName {
    return Intl.message(
      '二维码和条形码制作',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `你好！`
  String get hello {
    return Intl.message(
      '你好！',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `首页`
  String get home {
    return Intl.message(
      '首页',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `历史记录`
  String get history {
    return Intl.message(
      '历史记录',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `扫描`
  String get scanTitle {
    return Intl.message(
      '扫描',
      name: 'scanTitle',
      desc: '',
      args: [],
    );
  }

  /// `二维码`
  String get qrcode {
    return Intl.message(
      '二维码',
      name: 'qrcode',
      desc: '',
      args: [],
    );
  }

  /// `条形码`
  String get barcode {
    return Intl.message(
      '条形码',
      name: 'barcode',
      desc: '',
      args: [],
    );
  }

  /// `分享应用`
  String get shareApp {
    return Intl.message(
      '分享应用',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `我的`
  String get me {
    return Intl.message(
      '我的',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get setting {
    return Intl.message(
      '设置',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `隐私政策`
  String get privacyPolicy {
    return Intl.message(
      '隐私政策',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `用户协议`
  String get userAgreement {
    return Intl.message(
      '用户协议',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `关于我们`
  String get aboutUs {
    return Intl.message(
      '关于我们',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `简介`
  String get wfIntroduction {
    return Intl.message(
      '简介',
      name: 'wfIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `同意`
  String get agree {
    return Intl.message(
      '同意',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `关闭`
  String get close {
    return Intl.message(
      '关闭',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `保存成功`
  String get saveSuccess {
    return Intl.message(
      '保存成功',
      name: 'saveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `保存失败`
  String get saveFail {
    return Intl.message(
      '保存失败',
      name: 'saveFail',
      desc: '',
      args: [],
    );
  }

  /// `版本`
  String get version {
    return Intl.message(
      '版本',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `给好评`
  String get givePraise {
    return Intl.message(
      '给好评',
      name: 'givePraise',
      desc: '',
      args: [],
    );
  }

  /// `纯文本`
  String get labelText {
    return Intl.message(
      '纯文本',
      name: 'labelText',
      desc: '',
      args: [],
    );
  }

  /// `网址`
  String get labelUrl {
    return Intl.message(
      '网址',
      name: 'labelUrl',
      desc: '',
      args: [],
    );
  }

  /// `姓名`
  String get labelName {
    return Intl.message(
      '姓名',
      name: 'labelName',
      desc: '',
      args: [],
    );
  }

  /// `电话`
  String get labelPhone {
    return Intl.message(
      '电话',
      name: 'labelPhone',
      desc: '',
      args: [],
    );
  }

  /// `公司名称`
  String get labelFirm {
    return Intl.message(
      '公司名称',
      name: 'labelFirm',
      desc: '',
      args: [],
    );
  }

  /// `职位`
  String get labelPosts {
    return Intl.message(
      '职位',
      name: 'labelPosts',
      desc: '',
      args: [],
    );
  }

  /// `邮箱`
  String get labelEmail {
    return Intl.message(
      '邮箱',
      name: 'labelEmail',
      desc: '',
      args: [],
    );
  }

  /// `抄送邮箱`
  String get labelEmailAdd {
    return Intl.message(
      '抄送邮箱',
      name: 'labelEmailAdd',
      desc: '',
      args: [],
    );
  }

  /// `地址`
  String get labelAddress {
    return Intl.message(
      '地址',
      name: 'labelAddress',
      desc: '',
      args: [],
    );
  }

  /// `网络名称`
  String get labelWifiName {
    return Intl.message(
      '网络名称',
      name: 'labelWifiName',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get labelWifiPassword {
    return Intl.message(
      '密码',
      name: 'labelWifiPassword',
      desc: '',
      args: [],
    );
  }

  /// `收件人`
  String get labelSjr {
    return Intl.message(
      '收件人',
      name: 'labelSjr',
      desc: '',
      args: [],
    );
  }

  /// `主题`
  String get labelZhuTi {
    return Intl.message(
      '主题',
      name: 'labelZhuTi',
      desc: '',
      args: [],
    );
  }

  /// `应用地址`
  String get labelApp {
    return Intl.message(
      '应用地址',
      name: 'labelApp',
      desc: '',
      args: [],
    );
  }

  /// `输入不能为空，请重新输入`
  String get hintTextNull {
    return Intl.message(
      '输入不能为空，请重新输入',
      name: 'hintTextNull',
      desc: '',
      args: [],
    );
  }

  /// `请输入文本`
  String get hintText {
    return Intl.message(
      '请输入文本',
      name: 'hintText',
      desc: '',
      args: [],
    );
  }

  /// `请输入网址`
  String get hintTextUrl {
    return Intl.message(
      '请输入网址',
      name: 'hintTextUrl',
      desc: '',
      args: [],
    );
  }

  /// `请输入姓名`
  String get hintTextName {
    return Intl.message(
      '请输入姓名',
      name: 'hintTextName',
      desc: '',
      args: [],
    );
  }

  /// `请输入电话`
  String get hintTextPhone {
    return Intl.message(
      '请输入电话',
      name: 'hintTextPhone',
      desc: '',
      args: [],
    );
  }

  /// `请输入公司名称`
  String get hintTextFirm {
    return Intl.message(
      '请输入公司名称',
      name: 'hintTextFirm',
      desc: '',
      args: [],
    );
  }

  /// `请输入职位`
  String get hintTextPosts {
    return Intl.message(
      '请输入职位',
      name: 'hintTextPosts',
      desc: '',
      args: [],
    );
  }

  /// `请输入邮箱`
  String get hintTextEmail {
    return Intl.message(
      '请输入邮箱',
      name: 'hintTextEmail',
      desc: '',
      args: [],
    );
  }

  /// `请输入地址`
  String get hintTextAddress {
    return Intl.message(
      '请输入地址',
      name: 'hintTextAddress',
      desc: '',
      args: [],
    );
  }

  /// `网络`
  String get hintTextWifi {
    return Intl.message(
      '网络',
      name: 'hintTextWifi',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get hintTextPassword {
    return Intl.message(
      '密码',
      name: 'hintTextPassword',
      desc: '',
      args: [],
    );
  }

  /// `字符集 包括大写字母、数字、常用标点符号和一些控制符。`
  String get hintTextCode128A {
    return Intl.message(
      '字符集 包括大写字母、数字、常用标点符号和一些控制符。',
      name: 'hintTextCode128A',
      desc: '',
      args: [],
    );
  }

  /// `字符集 包括大小写字母、数字、常用标点符号。`
  String get hintTextCode128B {
    return Intl.message(
      '字符集 包括大小写字母、数字、常用标点符号。',
      name: 'hintTextCode128B',
      desc: '',
      args: [],
    );
  }

  /// `字符集 为纯数字序列。`
  String get hintTextCode128C {
    return Intl.message(
      '字符集 为纯数字序列。',
      name: 'hintTextCode128C',
      desc: '',
      args: [],
    );
  }

  /// `是将上述三种字符集最佳优化组合。`
  String get hintTextCode128Auto {
    return Intl.message(
      '是将上述三种字符集最佳优化组合。',
      name: 'hintTextCode128Auto',
      desc: '',
      args: [],
    );
  }

  /// `条码生成 是由UPC/EAN指定代表意义规则的128码，编码方式同code128条码。`
  String get hintTextEAN128 {
    return Intl.message(
      '条码生成 是由UPC/EAN指定代表意义规则的128码，编码方式同code128条码。',
      name: 'hintTextEAN128',
      desc: '',
      args: [],
    );
  }

  /// `条码生成字符集包括数字 、大写字母以及- . $ / + % * 空格等字符,其中*只用于标记开始和结束。`
  String get hintTextCode39 {
    return Intl.message(
      '条码生成字符集包括数字 、大写字母以及- . \$ / + % * 空格等字符,其中*只用于标记开始和结束。',
      name: 'hintTextCode39',
      desc: '',
      args: [],
    );
  }

  /// `条码生成是 full ASCII 模式，可使用ASCII全部128个字符。`
  String get hintTextCode93 {
    return Intl.message(
      '条码生成是 full ASCII 模式，可使用ASCII全部128个字符。',
      name: 'hintTextCode93',
      desc: '',
      args: [],
    );
  }

  /// `条码 只允许11种字元，分别是0-9和-,为降低检查错误率，可使用两位的检验码。`
  String get hintTextCode11 {
    return Intl.message(
      '条码 只允许11种字元，分别是0-9和-,为降低检查错误率，可使用两位的检验码。',
      name: 'hintTextCode11',
      desc: '',
      args: [],
    );
  }

  /// `条形码 必须是纯的数字0-9，带有一位检验码。`
  String get hintTextMSI {
    return Intl.message(
      '条形码 必须是纯的数字0-9，带有一位检验码。',
      name: 'hintTextMSI',
      desc: '',
      args: [],
    );
  }

  /// `商品条码是纯数字，而且位数是12位，在编码过后外加一位校验码，组成13位数字。`
  String get hintTextEAN13 {
    return Intl.message(
      '商品条码是纯数字，而且位数是12位，在编码过后外加一位校验码，组成13位数字。',
      name: 'hintTextEAN13',
      desc: '',
      args: [],
    );
  }

  /// `商品条码是纯数字，而且位数是7位，在编码过后外加一位校验码，组成8位数字。`
  String get hintTextEAN8 {
    return Intl.message(
      '商品条码是纯数字，而且位数是7位，在编码过后外加一位校验码，组成8位数字。',
      name: 'hintTextEAN8',
      desc: '',
      args: [],
    );
  }

  /// `条码商品条码是纯数字，而且位数是11位，在编码过后外加一位校验码，组成12位数字,主要在美国和加拿大使用。`
  String get hintTextUPCA {
    return Intl.message(
      '条码商品条码是纯数字，而且位数是11位，在编码过后外加一位校验码，组成12位数字,主要在美国和加拿大使用。',
      name: 'hintTextUPCA',
      desc: '',
      args: [],
    );
  }

  /// ` 条码商品条码是纯数字，是由UPC-A缩减而成，位数是7位，而且首位必须为0，在编码过后外加一位校验码，组成8位数字。`
  String get hintTextUPCE {
    return Intl.message(
      ' 条码商品条码是纯数字，是由UPC-A缩减而成，位数是7位，而且首位必须为0，在编码过后外加一位校验码，组成8位数字。',
      name: 'hintTextUPCE',
      desc: '',
      args: [],
    );
  }

  /// `字符集包括数字和- $ :/.+ 以及ABCD等字符，其中ABCD只用于开始或者结尾，作为标识符使用。`
  String get hintTextCodabar {
    return Intl.message(
      '字符集包括数字和- \$ :/.+ 以及ABCD等字符，其中ABCD只用于开始或者结尾，作为标识符使用。',
      name: 'hintTextCodabar',
      desc: '',
      args: [],
    );
  }

  /// `包含大写字母（A-Z）、数字（0-9）以及特殊符号（如空格、破折号、点号、美元符号等）`
  String get hintTextExtended {
    return Intl.message(
      '包含大写字母（A-Z）、数字（0-9）以及特殊符号（如空格、破折号、点号、美元符号等）',
      name: 'hintTextExtended',
      desc: '',
      args: [],
    );
  }

  /// `开始制作`
  String get btnCreate {
    return Intl.message(
      '开始制作',
      name: 'btnCreate',
      desc: '',
      args: [],
    );
  }

  /// `预览图片`
  String get lookPhoto {
    return Intl.message(
      '预览图片',
      name: 'lookPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Plain text,business card,email,mobile number,website,Wi-Fi,SMS,application`
  String get qrTitle {
    return Intl.message(
      'Plain text,business card,email,mobile number,website,Wi-Fi,SMS,application',
      name: 'qrTitle',
      desc: '',
      args: [],
    );
  }

  /// `Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E`
  String get barTitle {
    return Intl.message(
      'Code 128,Code 128A, Code 128B,Code 128C, Code 39,Code 93,Extended,Codabar,EAN-13,EAN-8,UPC-A,UPC-E',
      name: 'barTitle',
      desc: '',
      args: [],
    );
  }

  /// `“木鱼 - 念经神器”主要用于平静内心情绪，防止冲动,我们在向您提供服务时，可能需要收集使用您账号相关信息及调用账号服务,存储,读取手机状态和身份,和一点网络信息及网络服务权限，我们承诺您的个人信息仅用于我们声明的目的。点击“同意”即表示您同意上述内容。`
  String get userAgreementTip {
    return Intl.message(
      '“木鱼 - 念经神器”主要用于平静内心情绪，防止冲动,我们在向您提供服务时，可能需要收集使用您账号相关信息及调用账号服务,存储,读取手机状态和身份,和一点网络信息及网络服务权限，我们承诺您的个人信息仅用于我们声明的目的。点击“同意”即表示您同意上述内容。',
      name: 'userAgreementTip',
      desc: '',
      args: [],
    );
  }

  /// `在佛教修行中，木鱼是一种常用的传统辅助工具，用于帮助修行者专注和保持节奏。虽然木鱼并非真正的鱼类，但根据不同的制作材料、形状和用途，可以分为以下几种类型：\n\n实心木鱼：实心木鱼是由整块实木雕刻而成的，通常呈圆球或椭圆形。它们制作精细，声音圆润悦耳。\n\n空心木鱼：空心木鱼由两个半球形木制壳体组成，内部为空心。这种设计使得声音更加清脆响亮，适合在大庙宇或开放场所使用。\n\n手持木鱼：手持木鱼是一种较小且方便携带的木鱼，通常由一个或两个小木块构成。修行者可以手持并敲击它们来产生声音。\n\n大木鱼：大木鱼一般用于寺庙大殿或重要仪式中，尺寸较大，制作精良，音量较大。\n\n小木鱼：小木鱼尺寸较小，常用于个人修行或小规模的寺庙。\n\n需要注意的是，这些种类只是一些常见的木鱼类型，并且可能因地区、传统和个人偏好而有所不同。无论使用何种类型的木鱼，其目的都是帮助修行者在冥想和念诵中达到专注和平静的状态。`
  String get introductionInfo {
    return Intl.message(
      '在佛教修行中，木鱼是一种常用的传统辅助工具，用于帮助修行者专注和保持节奏。虽然木鱼并非真正的鱼类，但根据不同的制作材料、形状和用途，可以分为以下几种类型：\n\n实心木鱼：实心木鱼是由整块实木雕刻而成的，通常呈圆球或椭圆形。它们制作精细，声音圆润悦耳。\n\n空心木鱼：空心木鱼由两个半球形木制壳体组成，内部为空心。这种设计使得声音更加清脆响亮，适合在大庙宇或开放场所使用。\n\n手持木鱼：手持木鱼是一种较小且方便携带的木鱼，通常由一个或两个小木块构成。修行者可以手持并敲击它们来产生声音。\n\n大木鱼：大木鱼一般用于寺庙大殿或重要仪式中，尺寸较大，制作精良，音量较大。\n\n小木鱼：小木鱼尺寸较小，常用于个人修行或小规模的寺庙。\n\n需要注意的是，这些种类只是一些常见的木鱼类型，并且可能因地区、传统和个人偏好而有所不同。无论使用何种类型的木鱼，其目的都是帮助修行者在冥想和念诵中达到专注和平静的状态。',
      name: 'introductionInfo',
      desc: '',
      args: [],
    );
  }

  /// `木鱼 - 念经神器是一款修炼App，模拟真实木鱼敲击，帮用户静心解压。木鱼是一种法器，多用于佛教、道教的功课与法会。相传鱼昼夜不合目，故刻木像鱼形，击之以警戒僧众应昼夜思道。形制有二：一为挺直鱼形，用来粥饭或集众、警众，悬挂在寺院走廊上。二为圆状鱼形，诵经时所用，放在案上。明、清以来，民间音乐和潮剧、粤剧中常用到木鱼。使木鱼除法器外兼具乐器功能\n木鱼由来:唐代高僧玄奘大师从西域取经归来时，途经蜀地，遇一长者，到其家化斋。长者之子被后母陷害，扔进了河里，被一条大鱼吞食。恰好那天玄奘大师偏要吃鱼，长者只好出去买回了一条大鱼。在剖鱼的时候，从鱼腹中救出了自己的孩儿。玄奘大师说：“这正是此儿夙愿把持佛律中不杀戒的因果报应，所以虽被鱼吞，却得不死。”长者说：“那怎么样才能报答鱼恩呢。”玄奘大帅告诉说：“鱼为救孩而牺牲，应该用木雕成鱼形，悬于佛寺之中，每逢斋饭时敲击，以此可报大鱼之德。`
  String get aboutInfo {
    return Intl.message(
      '木鱼 - 念经神器是一款修炼App，模拟真实木鱼敲击，帮用户静心解压。木鱼是一种法器，多用于佛教、道教的功课与法会。相传鱼昼夜不合目，故刻木像鱼形，击之以警戒僧众应昼夜思道。形制有二：一为挺直鱼形，用来粥饭或集众、警众，悬挂在寺院走廊上。二为圆状鱼形，诵经时所用，放在案上。明、清以来，民间音乐和潮剧、粤剧中常用到木鱼。使木鱼除法器外兼具乐器功能\\n木鱼由来:唐代高僧玄奘大师从西域取经归来时，途经蜀地，遇一长者，到其家化斋。长者之子被后母陷害，扔进了河里，被一条大鱼吞食。恰好那天玄奘大师偏要吃鱼，长者只好出去买回了一条大鱼。在剖鱼的时候，从鱼腹中救出了自己的孩儿。玄奘大师说：“这正是此儿夙愿把持佛律中不杀戒的因果报应，所以虽被鱼吞，却得不死。”长者说：“那怎么样才能报答鱼恩呢。”玄奘大帅告诉说：“鱼为救孩而牺牲，应该用木雕成鱼形，悬于佛寺之中，每逢斋饭时敲击，以此可报大鱼之德。',
      name: 'aboutInfo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

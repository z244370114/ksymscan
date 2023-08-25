import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ksymscan/page/home_view.dart';

import 'common/application.dart';
import 'common/constants.dart';
import 'generated/l10n.dart';

void main() {
  Application.initSp('ksymscan').then((value) => {runApp(const MyApp())});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool useMaterial3 = true;
  ThemeMode themeMode = ThemeMode.system;
  ColorSeed colorSelected = ColorSeed.baseColor;
  ColorImageProvider imageSelected = ColorImageProvider.leaves;
  ColorScheme? imageColorScheme = const ColorScheme.light();
  ColorSelectionMethod colorSelectionMethod = ColorSelectionMethod.colorSeed;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
            ? colorSelected.color
            : null,
        colorScheme: colorSelectionMethod == ColorSelectionMethod.image
            ? imageColorScheme
            : null,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: useMaterial3,
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(
      //   colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
      //       ? colorSelected.color
      //       : imageColorScheme!.primary,
      //   useMaterial3: useMaterial3,
      //   brightness: Brightness.dark,
      //   appBarTheme: AppBarTheme(
      //     centerTitle: true,
      //   ),
      // ),
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        S.delegate,
      ],
      // title: S.of(context).appName,
      home: HomeViewPage(),
    );
  }
}

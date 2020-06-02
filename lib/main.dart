import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './features/home/home.dart';

import 'i18n/app_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      supportedLocales: [
        Locale("id", "ID"),
        Locale("en", "US"),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        print("Locale: ${locale.languageCode}");
        print("Supported Locales : $supportedLocales");
        return supportedLocales.first;
      },
      home: HomePage()
    );
  }
}
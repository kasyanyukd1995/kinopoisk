import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/core/common/dependency_service.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/pages/index.dart';

void main() {
  DependencyService.registerServices();
  print('end registration');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GeneratedLocalizationsDelegate i18n = I18n.delegate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieSearch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShellPage(),
      navigatorKey: Get.key,
      localizationsDelegates: [i18n],
      supportedLocales: i18n.supportedLocales,
      localeResolutionCallback: i18n.resolution(
        fallback: const Locale('en', 'US'),
      ),
    );
  }
}

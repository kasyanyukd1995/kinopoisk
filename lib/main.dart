import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:kinopoisk/core/services/dependency_service.dart';
import 'package:kinopoisk/generated/i18n.dart';
import 'package:kinopoisk/pages/home_page.dart';
import 'package:kinopoisk/pages/index.dart';
import 'package:kinopoisk/pages/shell_page.dart';
import 'pages/play_trailer_page.dart';

void main() {
  //DependencyService.registerServices();
  DependencyService.registerServices();
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

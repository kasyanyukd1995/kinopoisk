import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kinopoisk/pages/home_page.dart';
import 'package:kinopoisk/pages/movies_page.dart';
import 'package:kinopoisk/pages/top250_page.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class PlayTrailerPage extends StatefulWidget {
  final String urlTrailer;

  PlayTrailerPage(this.urlTrailer);

  @override
  PlayTrailerPageState createState() => new PlayTrailerPageState(urlTrailer);
}

class PlayTrailerPageState extends State<PlayTrailerPage> {
  String urlTrailer;

  PlayTrailerPageState(String urlTrailer) {
    this.urlTrailer = urlTrailer;
  }

  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
    ]);
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        appBar: AppBarWidget(),
        url: urlTrailer,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

/*
class PlayTrailerPage extends StatelessWidget {
  final String urlTrailer;
  PlayTrailerPage({
    this.urlTrailer,
  });

  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: urlTrailer,
        appBar: AppBarWidget(),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
*/

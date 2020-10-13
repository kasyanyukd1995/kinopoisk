import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kinopoisk/widgets/index.dart';

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

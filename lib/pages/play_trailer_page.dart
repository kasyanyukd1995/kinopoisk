import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
//import 'package:webview_flutter/webview_flutter.dart';

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

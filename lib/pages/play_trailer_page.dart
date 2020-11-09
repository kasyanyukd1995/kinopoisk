import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinopoisk/widgets/app_bar_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayTrailerPage extends StatefulWidget {
  final String videoId;

  const PlayTrailerPage({this.videoId});

  @override
  _PlayTrailerPageState createState() => _PlayTrailerPageState(videoId);
}

class _PlayTrailerPageState extends State<PlayTrailerPage> {
  final String videoId;

  _PlayTrailerPageState(this.videoId);
  Widget build(BuildContext conxtext) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: YoutubePlayer(
        controller: _controller(videoId),
        liveUIColor: Colors.white54,
        actionsPadding: const EdgeInsets.all(15.0),
        aspectRatio: 16 / 9,
      ),
    );
  }

  YoutubePlayerController _controller(String videoId) {
    return YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }
}

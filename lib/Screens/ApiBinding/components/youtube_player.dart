import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExchangeYouTubePlayer extends StatelessWidget {
  const ExchangeYouTubePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'IjeKw0B8PG8',
      flags: const YoutubePlayerFlags(
          // autoPlay: true,
          // mute: true,
          ),
    );
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      // videoProgressIndicatorColor: Colors.amber,
      progressColors: const ProgressBarColors(
        playedColor: yellowGold,
        handleColor: Colors.amberAccent,
      ),
      // onReady () {
      //     _controller.addListener(listener);
      // },
    );
  }
}

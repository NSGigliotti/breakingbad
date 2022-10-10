import 'package:breakingbad/model/episode_model.dart';
import 'package:flutter/material.dart';

class CardEpisode extends StatelessWidget {
  EpisodesModel episode;

  CardEpisode({required this.episode, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? colorCard;

    TextStyle? textCardSerie;

    String breakingbad = 'Breaking Bad';
    String betterCallSoul = 'Better Call Saul';

    if (episode.series == breakingbad) {
      colorCard = Colors.yellow;
      textCardSerie = const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: Colors.green,
            blurRadius: 10,
            offset: Offset(2.0, 2.0),
          ),
        ],
      );
    } else if (episode.series == betterCallSoul) {
      colorCard = Colors.white;
      textCardSerie = const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: Colors.red,
            blurRadius: 10,
            offset: Offset(2.0, 2.0),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        color: colorCard,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'S${episode.season}E${episode.episode}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Series: ${episode.series}',
                      style: textCardSerie,
                    ),
                  ),

                  Text('Title: ${episode.title}'),
                  Text('Date: ${episode.air_date}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

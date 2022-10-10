import 'package:breakingbad/pages/episodes/components/card_episode.dart';
import 'package:breakingbad/pages/episodes/components/categori_episode.dart';
import 'package:breakingbad/pages/episodes/controller/episode_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episodes'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            GetBuilder<EpisodeController>(builder: (controller) {
              return Container(
                padding: const EdgeInsets.only(left: 25),
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, index) => const SizedBox(width: 10),
                  itemCount: controller.allSeries.length,
                  itemBuilder: (_, index) {
                    return CategoriEpisode(
                      onPressed: () =>
                          controller.selectedSerie(controller.allSeries[index]),
                      isSelected: controller.allSeries[index] ==
                          controller.currentCategory,
                      category: controller.allSeries[index],
                    );
                  },
                ),
              );
            }),
            Expanded(
              child: GetBuilder<EpisodeController>(builder: (controller) {
                return controller.isLoading
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(child: CircularProgressIndicator())
                        ],
                      )
                    : GridView.builder(
                        itemCount: controller.allEpisodesFilter.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                        itemBuilder: (_, index) {
                          return CardEpisode(
                              episode: controller.allEpisodesFilter[index]);
                        },
                      );
              }),
            )
          ],
        ),
      ),
    );
  }
}

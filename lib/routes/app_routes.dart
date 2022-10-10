import 'package:breakingbad/pages/characters/binding/character_binding.dart';
import 'package:breakingbad/pages/characters/characters_page.dart';
import 'package:breakingbad/pages/detail_character/detail_character.dart';
import 'package:breakingbad/pages/episodes/binding/episode_binding.dart';
import 'package:breakingbad/pages/episodes/episodes_page.dart';
import 'package:get/get.dart';

import '../pages/home/home_page.dart';

abstract class AppRoutes {
  static final pages = <GetPage>[
    GetPage(
      name: PageRoutes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: PageRoutes.characters,
      page: () => const CharactersPage(),
      binding: CharacterBinding(),
    ),
    GetPage(
      name: PageRoutes.detailCharacters,
      page: () => DetailCharacter(),
    ),
    GetPage(
      name: PageRoutes.episodes,
      page: () => EpisodesPage(),
      binding: EpisodeBinding(),
    ),
  ];
}

abstract class PageRoutes {
  static const String home = '/';
  static const String characters = '/characters';
  static const String detailCharacters = '/detailCharacters';
  static const String episodes = '/episodes';
}

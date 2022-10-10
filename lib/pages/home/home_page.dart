import 'package:breakingbad/pages/home/components/icone_menu.dart';
import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breaking Bad'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          children: [
            IconeMenu(
              imageUrl:
                  'https://static.wikia.nocookie.net/breakingbad/images/e/e7/BB-S5B-Walt-590.jpg',
              name: 'Characters',
              page: PageRoutes.characters,
            ),
            IconeMenu(
              imageUrl:
                  'https://presleyson.com.br/wp-content/uploads/2018/12/breaking-bad-800x800-min.png?a7c535&a7c535',
              name: 'Episodes',
              page: PageRoutes.episodes,
            ),
          ],
        ),
      ),
    );
  }
}

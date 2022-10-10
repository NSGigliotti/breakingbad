import 'package:breakingbad/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:breakingbad/model/character_model.dart';
import 'package:get/get.dart';

class CharacterAvatar extends StatelessWidget {
  CharacterModel character;
  CharacterAvatar({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed(PageRoutes.detailCharacters, arguments: character),
      child: Card(
        shadowColor: Colors.black,
        elevation: 15,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 5.0, color: Colors.black),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 3,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: Image.network(
                  character.img,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  character.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 2.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

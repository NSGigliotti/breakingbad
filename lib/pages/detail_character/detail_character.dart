import 'package:breakingbad/model/character_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCharacter extends StatelessWidget {
  DetailCharacter({Key? key}) : super(key: key);

  final CharacterModel character = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            // height: double.infinity,
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          width: 5,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(1, 3))
                        ]),
                    child: Image.network(
                      character.img,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      'Name : ${character.name}',
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Nickname : ${character.nickname}',
                    style:
                        const TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                Center(
                  child: Text(
                    'Birthday : ${character.birthday}',
                    style:
                        const TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                Center(
                  child: Text(
                    'Status : ${character.status}',
                    style:
                        const TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                Center(
                  child: Text(
                    'Portrayed : ${character.portrayed}',
                    style:
                        const TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Occupation :',
                    style:
                        TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemCount: character.occupation.length,
                      itemBuilder: (_, index) {
                        return Center(
                            child: Text(
                          character.occupation[index],
                          style: const TextStyle(
                              fontSize: 18, fontFamily: 'atwriter'),
                        ));
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Appearance :',
                    style:
                        TextStyle(fontSize: 25, fontFamily: 'atwriter'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: character.appearance.length,
                      itemBuilder: (_, index) {
                        return Center(
                            child: Text(
                          'Season: ${character.appearance[index].toString()}',
                          style: const TextStyle(
                              fontSize: 18, fontFamily: 'atwriter'),
                        ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

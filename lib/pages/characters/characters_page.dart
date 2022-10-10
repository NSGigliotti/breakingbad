import 'package:breakingbad/pages/characters/components/character_avatar.dart';
import 'package:breakingbad/pages/characters/controller/character_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool teste = true;

    final searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
      ),
      body: Column(
        children: [
          GetBuilder<CharacterController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  controller.searchTitle.value = value;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Pesquise Aki ...',
                  hintStyle:
                      TextStyle(color: Colors.grey.shade400, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    // color: CustomColors.customConstrastColor,
                    size: 21,
                  ),
                  suffixIcon: teste
                      ? IconButton(
                          onPressed: () {
                            searchController.clear();
                            controller.searchTitle.value = '';
                            FocusScope.of(context).unfocus();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 21,
                            //  color: CustomColors.customConstrastColor,
                          ),
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
              ),
            );
          }),
          GetBuilder<CharacterController>(
            builder: (controller) {
              return Expanded(
                child: Visibility(
                  visible: controller.searchTitle.isNotEmpty,
                  // ignore: sort_child_properties_last
                  child: GridView.builder(
                          itemCount: controller.characterSearchResult.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          itemBuilder: (_, index) {
                            return CharacterAvatar(
                                character: controller.characterSearchResult[index]);
                          },
                        ),
                  replacement: controller.isLoading
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Center(child: CircularProgressIndicator())
                          ],
                        )
                      : GridView.builder(
                          itemCount: controller.allChacaters.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          itemBuilder: (_, index) {
                            return CharacterAvatar(
                                character: controller.allChacaters[index]);
                          },
                        ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

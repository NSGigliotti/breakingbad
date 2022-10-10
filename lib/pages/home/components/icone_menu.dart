import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconeMenu extends StatelessWidget {
  String imageUrl;
  String name;
  String page ;
  IconeMenu({Key? key, required this.imageUrl, required this.name ,required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(page) ,
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(imageUrl),
          ),
          Text(name)
        ],
      ),
    );
  }
}

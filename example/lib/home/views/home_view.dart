import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shingara/shingara.dart';

import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.bgImage), fit: BoxFit.cover)),
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){

              askDialog1(
                  title: "farhad",
                  onDoClicked: (){debugPrint("00000");});

            }, child: Text("ask dialog"))
          ],
        ),
      ),
    );
  }

}

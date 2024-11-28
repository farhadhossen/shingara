import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shingara/src/styles/alachis_colors.dart';
import 'package:shingara/src/styles/alachis_sizes.dart';


/// askBeforeDoDialog is a dialog witch will be handled by user.
void askDialog1({
  String title = "Attention",
  String content = "Are you sure you want to delete?",
  Color titleColor = const Color(0Xab0505),
  Color contentColor = const Color(0X000000),
  Color positiveColor = const Color(0X07540c),
  Color negativeColor = const Color(0Xab0505),
  required VoidCallback onDoClicked
}){

  debugPrint("---------------$title");
  debugPrint("---------------$titleColor");
  debugPrint("---------------$contentColor");
  debugPrint("---------------$positiveColor");
  debugPrint("---------------$negativeColor");

  Get.defaultDialog(
    title: title,
    titleStyle: TextStyle(color: titleColor),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(content,
          style: TextStyle(
            color: titleColor,
          ),
        ),
        SizedBox(height: AlachisSizes.s10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: negativeColor),
                onPressed: (){
                  Get.back();
                }, child: Text("No")
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: positiveColor),
                onPressed: onDoClicked,
                child: Text("Yes")
            ),
          ],
        )
      ],
    ),
  );
}
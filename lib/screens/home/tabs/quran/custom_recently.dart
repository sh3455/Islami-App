import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';

class CustomRecently extends StatelessWidget {
   CustomRecently({super.key,required this.titleText,required this.text,required this.hinttext});
  String titleText;
  String text;
  String hinttext;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColor.maincolor,
          borderRadius: BorderRadius.circular(22)
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(titleText,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.bodycolor,
                ),
              ),
              Text(text,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.bodycolor
                ),
              ),
              Text(hinttext,
                style: TextStyle(
                    fontSize: 14,
                    color: AppColor.bodycolor
                ),
              )
            ],
          ),
          Image.asset("assets/images/recently_sura.png")
        ],
      ),
    );

  }
}

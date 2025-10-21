import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';

class HadithContantDetails extends StatelessWidget {
   HadithContantDetails({super.key,required this.Contant});
  String Contant;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
      padding: EdgeInsets.all(8),

      child: Text(Contant,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.maincolor,
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';

class SuraContantDetails extends StatelessWidget {
   SuraContantDetails({super.key,required this.Contant,required this.index});
  String Contant;
  int index;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6,horizontal: 20),
      padding: EdgeInsets.all(8),

      child: Text("$Contant[${index+1}]",
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.maincolor,
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
    );
  }
}

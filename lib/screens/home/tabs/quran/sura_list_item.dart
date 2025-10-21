import 'package:flutter/material.dart';
import 'package:islami/models/sura_model.dart';

class SuraListItem extends StatelessWidget {
  SuraModel suraModel;
  SuraListItem({super.key,required this.suraModel});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/vector_img.png"),
            Text("${suraModel.index+1}",
              style: TextStyle(
              color: Colors.white,
            ),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("${suraModel.SuraEnglishName}",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),),
              Text("${suraModel.numOfVerses}  Verses  ",
                style: TextStyle(
                fontSize: 14,
                color: Colors.white
              ),),
            ],
          ),
        ),
        Spacer(),
        Text("${suraModel.SuraArabicName}",
          style: TextStyle(fontSize: 20,color: Colors.white),),
      ],
    );
  }
}

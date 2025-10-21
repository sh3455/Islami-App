import 'package:flutter/material.dart';
import 'package:islami/models/introducation_model.dart';

import '../../customs/custom_color.dart';

class IntroducationItem extends StatelessWidget {
   IntroducationItem({super.key,required this.introducationModel});
   IntroducationModel introducationModel;


  @override
  Widget build(BuildContext context){
   var size = MediaQuery.of(context).size;
   return Padding(
     padding: const EdgeInsets.all(16.0),
     child: Column(
        children: [
          Image.asset(introducationModel.imagePath),
          Text(introducationModel.text,
            style: TextStyle(fontSize:24,
                fontWeight: FontWeight.w700,
                color: AppColor.maincolor,
                fontFamily: "Janna"
            ),),
          SizedBox(height: size.height*0.005,),
          Text(introducationModel.hintText??"",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20,
            color: AppColor.maincolor,
            fontFamily: "Janna",
            fontWeight: FontWeight.w700
          ),)
        ],
      ),
   );

  }
}

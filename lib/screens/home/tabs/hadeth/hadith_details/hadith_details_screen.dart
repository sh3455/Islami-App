import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/models/hadith_model.dart';
import 'package:islami/screens/home/tabs/hadeth/hadith_details/hadith_contant_details.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});
  static const String routeName = "Hadith_details";


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Scaffold(
      appBar: AppBar(

      ),
      body: Stack(
        children: [
          Container(
            color: AppColor.blackcolor,
            child: Image.asset("assets/images/details_screen.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Center(child: Text(args.title,
                style: TextStyle(
                    color:AppColor.maincolor,
                    fontSize:24,
                    fontWeight: FontWeight.w700
                ),)),

              Expanded(
                child: ListView.builder(
                  itemCount:args.contant.length,
                  itemBuilder:(context, index) {
                    return HadithContantDetails(Contant: args.contant[index]);
                  },),
              )


            ],
          ),
        ],
      ),
    );
  }
}

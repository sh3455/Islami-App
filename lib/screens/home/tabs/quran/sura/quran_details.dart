import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/screens/home/tabs/quran/sura/sura_contant_details.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "QuranDetails";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(args.index);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(args.SuraEnglishName,
          style: TextStyle(color: AppColor.maincolor,
            fontSize: 20,
            fontFamily: "janna",
            fontWeight: FontWeight.w700
          ),),
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
              Center(child: Text(args.SuraArabicName,
                style: TextStyle(
                    color:AppColor.maincolor,
                     fontSize:24,
                      fontWeight: FontWeight.w700
                ),)),
              Expanded(
                child:verses.isEmpty?
                    Center(child: CircularProgressIndicator(
                      color: AppColor.maincolor,)):
                ListView.builder(
                  itemCount: verses.length,
                  itemBuilder:(context, index) {
                  return SuraContantDetails(
                    Contant: verses[index],index: index,);
                },),
              )

            ],
          ),
        ],
      ),

    );

  }

  void loadSuraFile(int index) async{
    String suraContact = await rootBundle.loadString("assets/files/${index+1}.txt");
   List<String> suraLines = suraContact.split("\n").where((line) => line.trim().isNotEmpty).toList();
   verses=suraLines;
   setState(() {

   });

  }
}

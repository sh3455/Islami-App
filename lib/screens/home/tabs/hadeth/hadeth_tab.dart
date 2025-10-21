import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/models/hadith_model.dart';
import 'package:islami/screens/home/tabs/hadeth/hadith_details/hadith_details_screen.dart';

class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithModel> haditList=[];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if(haditList.isEmpty){
      loadHadithFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/logo intro.png"),
        CarouselSlider.builder(
          itemCount: haditList.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HadithDetailsScreen.routeName,
                      arguments: haditList[itemIndex] );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color:AppColor.maincolor,
                      borderRadius: BorderRadius.circular(22),
                      image: DecorationImage(
                        image: AssetImage("assets/images/hadith_background_image.png"),
                        fit: BoxFit.fill,
                      )

                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: [
                        Text(haditList[itemIndex].title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                          ),),


                        Expanded(
                            child: Text(
                              textDirection:TextDirection.rtl,
                                textAlign:TextAlign.center,
                                haditList[itemIndex].contant.join(""),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                              ),

                            ))
                      ],
                    ),
                  ),
                ),
              ),
          options:CarouselOptions(
            height:size.height*0.70,
            viewportFraction: 0.75,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,


          ) ,
        ),
      ],
    );

  }

  void loadHadithFile() async{
    for (int i=1 ; i<=50;i++){
     String hadithContant= await rootBundle.loadString("assets/files/hadith_$i.txt");
     List<String> hadithLines= hadithContant.split("\n");
     String title= hadithLines[0];
     hadithLines.removeAt(0);
     HadithModel hadithModel = HadithModel(title: title, contant: hadithLines);
     haditList.add(hadithModel);
     setState(() {

     });
    }
  }
}

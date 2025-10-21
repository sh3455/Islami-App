import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/screens/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami/screens/home/tabs/radio/radio_tab.dart';
import 'package:islami/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami/screens/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;
  List <String> backgroundImages =[
    "assets/images/quran bg.png",
    "assets/images/hadith_bg.png",
    "assets/images/sebha_bg.png",
    "assets/images/radio_bg.png",
    "assets/images/time_bg.png"
  ];

  List<Widget> tabs =[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Image.asset(backgroundImages[selectedIndex],
          fit: BoxFit.cover,),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: tabs[selectedIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: AppColor.maincolor
              ),
                child:BottomNavigationBar(
                  currentIndex: selectedIndex,
                    onTap: (index) {
                      selectedIndex = index;
                      setState(() {
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                         icon: builtItemBottomBar(index: 0, imagepath: "quran_icon"),
                          label: "Quran",

                      ),
                      BottomNavigationBarItem(
                          icon: builtItemBottomBar(index: 1, imagepath: "hadith_icon"),
                          label: "Hadith"
                      ),
                      BottomNavigationBarItem(
                          icon: builtItemBottomBar(index: 2, imagepath: "sebha_icon"),
                          label: "Sebha"
                      ),
                      BottomNavigationBarItem(
                          icon: builtItemBottomBar(index: 3, imagepath: "radio_icon"),
                          label: "Radio"
                      ),
                      BottomNavigationBarItem(
                          icon: builtItemBottomBar(index: 4, imagepath: "time_icon"),
                          label: "Time"
                      ),


                    ]),
            ),
        )

      ],
    );
  }
 Widget  builtItemBottomBar({required int index,required String imagepath}){
    return selectedIndex == index ?
    Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: BoxDecoration(
            color: AppColor.blackcolor,
            borderRadius: BorderRadius.circular(66)
        ),
        child: ImageIcon(AssetImage("assets/images/$imagepath.png")))
        :ImageIcon(AssetImage("assets/images/$imagepath.png"));
  }
}

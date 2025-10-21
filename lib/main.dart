import 'package:flutter/material.dart';
import 'package:islami/screens/home/tabs/hadeth/hadith_details/hadith_details_screen.dart';
import 'package:islami/theme/my_themedata.dart';
import 'package:islami/screens/home/home_screen.dart';
import 'package:islami/screens/home/tabs/quran/sura/quran_details.dart';
import 'package:islami/screens/introducation/introducation_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroducationScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        IntroducationScreen.routeName:(context)=>IntroducationScreen(),
        QuranDetails.routeName:(context)=>QuranDetails(),
        HadithDetailsScreen.routeName:(context)=>HadithDetailsScreen()


      },
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

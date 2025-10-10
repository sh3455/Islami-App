import 'package:flutter/material.dart';
import 'package:islami/screens/home/home_screen.dart';
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

      },
    );
  }
}

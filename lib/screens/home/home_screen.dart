import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("name")
        ],
      ),

    );
  }
}

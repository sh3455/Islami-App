import 'package:flutter/material.dart';

import '../customs/custom_color.dart';

class MyThemeData{
    static final ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.blackcolor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColor.maincolor
        )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColor.textcolor,
        unselectedItemColor: AppColor.bodycolor,

      )

  );
}
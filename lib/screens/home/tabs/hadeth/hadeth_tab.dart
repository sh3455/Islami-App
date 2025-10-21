import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  void loadHadithFile() async{
    for (int i=0 ; i<=50;i++){
     String hadithContant= await rootBundle.loadString("assets/files/hadith_$i.txt");
     List<String> hadithLines= hadithContant.split("\n");
     String title= hadithLines[0];
     hadithLines.removeAt(0);
    }
  }
}

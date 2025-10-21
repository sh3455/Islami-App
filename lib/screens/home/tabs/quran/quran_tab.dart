import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/screens/home/tabs/quran/custom_recently.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/screens/home/tabs/quran/sura/quran_details.dart';
import 'package:islami/screens/home/tabs/quran/sura_list_item.dart';

class QuranTab extends StatelessWidget {
   QuranTab({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/logo intro.png"),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: AppColor.maincolor,
                  )
                ),
                prefixIcon: ImageIcon(
                  AssetImage("assets/images/quran_icon.png"),
                  color: AppColor.maincolor,
                ),
                hintText: "Sura Name",
                hintStyle: TextStyle(
                  fontFamily: "Janna",
                    fontSize:16,
                    fontWeight: FontWeight.w700,
                    color: AppColor.textcolor)
              ),
            ),
            SizedBox(height: size.height*0.02,),
            Text("Most Recently ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColor.textcolor,
              ),),
            SizedBox(height: size.height*0.02,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomRecently(titleText: "Al-Anbiya", text: "الأنبياء", hinttext: "112 Verses "),
                  SizedBox(width: size.width * 0.03,),
                  CustomRecently(titleText: "Al-Fatiha", text: "الفاتحه", hinttext: "7 Verses "),

                ],
              ),
            ),
            SizedBox(height: size.height*0.03,),
            Text("Suras List",
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.textcolor
            ),),
            Expanded(
                child: ListView.separated(
                  separatorBuilder:(context, index) {
                    return Divider(thickness: 1,color: Colors.white,indent: 6,endIndent: 6,);

                  },
                    itemCount: SuraModel.getItemCount(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(QuranDetails.routeName,
                              arguments:SuraModel.getSuraModel(index) );
                        },
                        child: SuraListItem(
                          suraModel:SuraModel.getSuraModel(index),
                        ),
                      );
                    },)
            )

          ],
        ),
      ),
    );
  }
}

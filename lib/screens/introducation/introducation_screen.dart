import 'package:flutter/material.dart';
import 'package:islami/customs/custom_color.dart';
import 'package:islami/models/introducation_model.dart';
import 'package:islami/screens/home/home_screen.dart';
import 'package:islami/screens/introducation/introducation_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroducationScreen extends StatefulWidget {
   IntroducationScreen({super.key});
  static const String routeName = "IntroducationScreen";

  @override
  State<IntroducationScreen> createState() => _IntroducationScreenState();
}

class _IntroducationScreenState extends State<IntroducationScreen> {
  var  activeIndex=0;

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:AppColor.bodycolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: size.height *0.03,),
          Image.asset("assets/images/logo intro.png"),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged:(index) {
                activeIndex = index ;
                setState(() {});
              },
                itemCount: IntroducationModel.introducationModel.length,
                itemBuilder:(context, index) {
                  IntroducationModel introducationModel=IntroducationModel.introducationModel[index];
                  return IntroducationItem(introducationModel: introducationModel);
                }, ),
          ),
          Row(
            children: [
              Expanded(
                child: Visibility(
                  visible: activeIndex!=0,
                  child: TextButton(onPressed: (){
                    controller.previousPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeIn);
                    if(activeIndex < IntroducationModel.introducationModel.length){
                      activeIndex--;
                    }
                  },
                      child: Text("Back",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.maincolor
                  ),)),
                ),
              ),
              Spacer(),
              AnimatedSmoothIndicator(
                activeIndex: activeIndex ,
                count: IntroducationModel.introducationModel.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 7,
                  dotWidth: 7,
                  activeDotColor: AppColor.maincolor,
                ),
              ),
              Spacer(),
              Expanded(
                child: TextButton(onPressed: (){
                  controller.nextPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
                  if(activeIndex < IntroducationModel.introducationModel.length){
                    activeIndex++;
                  }else{
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    },));
                  }
                },
                    child: Text("Next",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColor.maincolor
                ),)),
              ),

            ],
          ),
          SizedBox(height: size.height*0.02,)


        ],
      ),
    );
  }
}

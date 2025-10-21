class IntroducationModel{

  String imagePath;
  String text;
  String? hintText;
  IntroducationModel({required this.text, required this.imagePath,this.hintText});


  static List<IntroducationModel>introducationModel =[

    IntroducationModel(
      imagePath: "assets/images/intro1.png",
      text: "Welcome To Islmi App"
    ),
    IntroducationModel(
        imagePath: "assets/images/intro2.png",
        text: "Welcome To Islami",
         hintText: "We Are Very Excited To Have You In Our Community"

    ),
    IntroducationModel(
        imagePath: "assets/images/intro3.png",
        text: "Reading the Quran",
        hintText: "Read, and your Lord is the Most Generous"
    ),
    IntroducationModel(
        imagePath: "assets/images/intro4.png",
        text: "Bearish",
        hintText: "Praise the name of your Lord, the Most High"
    ),
    IntroducationModel(
        imagePath: "assets/images/intro5.png",
        text: "Holy Quran Radio",
        hintText: "You can listen to the Holy Quran Radio through the application for free and easily"
    ),

  ];
}


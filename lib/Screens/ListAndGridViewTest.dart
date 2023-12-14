


import 'package:coffeapp/Components/ShowChalets_withListView.dart';
import 'package:flutter/material.dart';

class testState extends StatefulWidget {
  static const String id = "/coffeList";

  Color? MenuColor ;
  testState({this.MenuColor=Colors.black});

  @override
  State<testState> createState() => _testStateState();
}

class _testStateState extends State<testState> {
  static const String id ="/testState";

  @override
  // void initState() {
  //   super.initState();
  //     Future.delayed(Duration(seconds: 3)).then(
  //             (value) => Navigator.pushReplacement
  //               (context,
  //                 MaterialPageRoute(builder: (context)=> StartScreen(),
  //                 ),
  //             ),
  //   );
  // }
  Color containerColor = Colors.red;
  List<String> imageList=[
    "assets/images/Background 1.png",
    "assets/images/Image.png",
    "assets/images/images10.png",
    "assets/images/Background 1.png",
    "assets/images/Image.png",
    "assets/images/images10.png",

  ];

  List<String>  chaletsNameList=[
    "ibrahim",
    "salah",
    "Farah",
    "ibrahim",
    "salah",
    "Farah",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),


      body: SingleChildScrollView(

        child: Container(
            height: 600,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 50,
                mainAxisSpacing: 60,

              ),
              itemCount: imageList.length ,

              itemBuilder:(context,index){
                return ShowChalets_withListView(
                  imageURl: imageList[index],
                  chaletName: chaletsNameList.elementAt(index),


                );



              }


              ,)
        ),


      ),
    );
  }
}
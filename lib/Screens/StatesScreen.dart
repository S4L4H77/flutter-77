
import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';

class StatesScreen extends StatelessWidget {
  static const String id = "/StatesScreen";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Color(0xffA9A454),

   
      body:  Container(
        width: double.infinity,
        child: Stack(

          children: [
            Positioned(top: 151,left: 80,child: Image.asset("assets/images/gis_drone.png")),

            Positioned(
              top: 70,
              left: 62,
              child: Container(
                width: 265,
                height: 71,
                child: Column(

crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("Order number ",
                    style: TextStyle(fontSize: 18,color: Color(0xffFFFFFF)),),

                    Text(" #23VF40CCE9 ", style: TextStyle(fontSize: 36,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
            ),


            Positioned(top: 402,left: 40 ,child: Container(
              width: 313,
              height: 125,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Your order is on ",
                  style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: Color(0xffFFFFFF)),
                  ),
                  Text(" its way! ",
                    style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            )),
            
            
            Positioned(bottom: 190,left:40,child: Container(
              width: 313,
              height: 47,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                Text("Time: ",
                style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500)),

               Text("6 minutes",
           style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF),fontWeight: FontWeight.w800)),
        ]

        ),
            ),),


            Positioned  (
              bottom: 81,
              child: InkWell(onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(),),);

              },child: Box(Box_color: kMainColor,Title: "Nice!",Title_color: Color(0xff363636),FontSize: 36,)),

            ),


        ],
      ),
    ),
    );
  }
}


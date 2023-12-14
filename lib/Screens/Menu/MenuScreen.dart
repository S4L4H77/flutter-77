

import 'package:coffeapp/Screens/AboutScreen.dart';
import 'package:coffeapp/Screens/Auth/LoginScreen.dart';
import 'package:coffeapp/Screens/Menu/MenuCoffeeScreen.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/Screens/StartScreen.dart';
import 'package:coffeapp/Screens/StatesScreen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class MenuScreen extends StatelessWidget {
  static const String id = "/MenuScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff363636),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> StartScreen()));
          },child: Icon(Icons.cancel,color: kMainColor,size: 48,)),

        ),

      ),


      body: Container(

        width: double.infinity,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child:   InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuCoffeeScreen()));
                
              },child: Text("Menu",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),)),
            ),
            Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));

              },child: Text("About",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
            ),
            ),
            Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child:InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));

              },child: Text("Profile",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
            ),
            ),
            Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StatesScreen()));

              },child: Text("Status",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),)),
            ),
            Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            InkWell(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen(),),);

              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text("Log Out",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
              ),
            ),
            Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),



          ],


        ),


      ) ,

    );
  }
}
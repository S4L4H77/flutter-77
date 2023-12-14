



import 'package:coffeapp/Screens/Menu/MenuScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class AboutScreen extends StatelessWidget {

  static const String id = "/AboutScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff363636),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> MenuScreen()));

        },
        child: Icon(Icons.menu,color: kMainColor,size: 48 ,)),
      ),


      body: Container(
        width: double.infinity,
        child:   Stack(



          children: [


            Align(

              child: SizedBox(
                width: 291,
                child: Column(

                  children: [
                    Text("About",
                      style: TextStyle(fontFamily: "Lobster",
                          fontSize: 48,
                          color: kMainColor
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 27,bottom: 18),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla praesent feugiat porttitor velit urna ultrices. Leo pulvinar commodo scelerisque at feugiat lacus. Pretium egestas est interdum senectus. ",

                        style: TextStyle(color: kMainColor,fontSize: 14,fontWeight: FontWeight.bold),

                      ),
                    ),

                    Padding(

                      padding: const EdgeInsets.only(top: 8.0),

                      child: Text("Scelerisque metus non egestas enim laoreet. Pulvinar id faucibus libero erat. Massa vulputate volutpat in mi. Placerat est at morbi massa rhoncus at est leo. Molestie tellus bibendum orci nullam aenean. Elit, est, condimentum at congue at tellus. Diam sit pretium cras egestas scelerisque scelerisque aliquam enim. Nulla volutpat nunc enim netus adipiscing.",

                        style: TextStyle(color: kMainColor,),

                      ),

                    ),
                  ],

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 570,left: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Doe ",style: TextStyle(color: kMainColor,fontWeight: FontWeight.bold),
                      ),
                      Text(" Founder",style: TextStyle(fontSize: 12,color: kMainColor),),
                ],
              ),
            ),






            Positioned(
right: 0,
              left: 0,
              bottom: 0,

              child: Image.asset("assets/images/Image1.png",fit: BoxFit.fitWidth,),

            ),
          ],





        ),
      ),


    );
  }
}

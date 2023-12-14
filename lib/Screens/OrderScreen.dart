

import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/Screens/AboutScreen.dart';
import 'package:coffeapp/Screens/Menu/MenuCoffeeScreen.dart';
import 'package:coffeapp/Screens/StatesScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';


class OrderScreen extends StatelessWidget {
  static const String id = "/OrderScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: kMainColor,
      body: Container(
        height: double.infinity,
        child: Stack(

          children: [

            Positioned(left: 25,top:50,child: GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuCoffeeScreen(),),);
            },
                child: Image.asset("assets/images/Back - icon.png"))),

            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Text("Your Order",
                style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: Color(0xff363636)),
                ),
              ),
            ),

            Positioned(
             top: 200,
             left: 30,
             right: 20,
              child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Container(
                  //   width: 340,
                  //   height: 48,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(vertical: 12),
                  //     child: ListTile(
                  //
                  //       title:Text("Espresso ................................",
                  //         style:TextStyle(fontSize: 18,fontFamily: "Lobster",color: Color(0xff363636),fontWeight: FontWeight.bold)
                  //         ,) ,
                  //
                  //
                  //       subtitle: Text("\$3.00"),
                  //
                  //       trailing: Icon(Icons.add_circle_sharp,),
                  //
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: 340,
                  //   height: 48,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(vertical: 12),
                  //     child: ListTile(
                  //
                  //       title:Text("Cappuccino ............................",
                  //         style:TextStyle(fontSize: 18,fontFamily: "Lobster",color: Color(0xff363636),fontWeight: FontWeight.bold)
                  //         ,) ,
                  //
                  //
                  //       subtitle: Text("\$4.00"),
                  //
                  //       trailing: Icon(Icons.add_circle_sharp,),
                  //
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   width: 340,
                  //   height: 48,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(vertical: 12),
                  //     child: ListTile(
                  //
                  //       title:Text("Cafe Latte................................",
                  //         style:TextStyle(fontSize: 18,fontFamily: "Lobster",color: Color(0xff363636),fontWeight: FontWeight.bold)
                  //         ,) ,
                  //
                  //
                  //       subtitle: Text("\$4.50"),
                  //
                  //       trailing: Icon(Icons.add_circle_sharp,),
                  //
                  //     ),
                  //   ),
                  // ),

                  Padding (
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Espresso   ........................ ",
                              style: TextStyle(fontSize: 22,fontFamily: "Lobster"),
                            ),

                            IconButton(onPressed: (){},icon:(Icon(Icons.add_circle_sharp,size: 20))),
                            Text("3",style: TextStyle(fontSize: 18),),
                            IconButton(onPressed: (){},icon:(Icon(Icons.remove_circle,size: 20))),
                          ],
                        ),
                        Text(" \$3.00",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  ),
                  Padding (
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Cappuccino    ................... ",
                              style: TextStyle(fontSize: 22,fontFamily: "Lobster"),
                            ),

                            IconButton(onPressed: (){},icon:(Icon(Icons.add_circle_sharp,size: 20))),
                            Text("2",style: TextStyle(fontSize: 18),),
                            IconButton(onPressed: (){},icon:(Icon(Icons.remove_circle,size: 20))),
                          ],
                        ),
                        Text(" \$4.00",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  ),
                  Padding (
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Cafe Latte   ....................... ",
                              style: TextStyle(fontSize: 22,fontFamily: "Lobster"),
                            ),

                            IconButton(onPressed: (){},icon:(Icon(Icons.add_circle_sharp,size: 20))),
                            Text("5",style: TextStyle(fontSize: 18),),
                            IconButton(onPressed: (){},icon:(Icon(Icons.remove_circle,size: 20))),
                          ],
                        ),
                        Text(" \$4.50",style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  ),



               ],
              ),
            ),

            Positioned(
              top: 550,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:40),
                child: Container(
                  width: 400,
                height: 60,
                child: ListTile(

                  title: Text("Total ............ \$39.50",
                  style: TextStyle(fontSize: 36,fontFamily: "Lobster"),
                  ),
                  subtitle: Text("incl. moms + drone delivery"),

                ),
                ),
              ),
            ),

   Positioned(  bottom: 81,child: GestureDetector(onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>StatesScreen(),),);

   },

       child: Box(Box_color:Color(0xff98694F),Title: "Take My money",Title_color: Color(0xffFFFFFF),FontSize: 24,)),),

          ],

          ),
      ),
      
    );
  }
}

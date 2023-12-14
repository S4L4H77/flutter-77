

import 'package:coffeapp/Screens/OrderScreen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class MenuCoffeeScreen extends StatelessWidget {
  static const String id = "/MenuCoffeeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff98694F),

      body:  Container(
        width: double.infinity,
        child: Stack(

          children: [
            Positioned(bottom: 0,right: 0,left: 0,child: Container(width: double.infinity,child: Image.asset("assets/images/images11.png",fit: BoxFit.fitWidth,))),

            Positioned(left: 30,top: 58,child: InkWell(onTap: (){
              Navigator.pushNamed(context, "/MenuScreen");
            } ,child: Image.asset("assets/images/Vector.png"))),

            Positioned(right: 23,top: 53,child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderScreen(),),);
              
            },child: Image.asset("assets/images/Order - icon.png")),),

            Positioned(top: 37,right: 15,child: Container(
              width: 24,
              child: FloatingActionButton(
                backgroundColor:Color(0xffE9CBA7) ,
                onPressed: null,
                child: Text("3",style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.bold ),),

              ),
            )),


            Positioned(top: 95,child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 144.0),
              child: Text("Menu",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
            )),




            Positioned(top:190,child: Column(
              children: [
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),
                Container(

                  width: 900,
                  child: ListTile(

                    leading: Container(

                      child: FloatingActionButton(
                        backgroundColor: kMainColor,
                        onPressed: (){},
                        child: Icon(Icons.add,size: 48,color: Color(0xff98694F),),

                      ),

                    ),

                    title:   Text("Espresso ...................... \$3.00",style: TextStyle(fontSize: 24,fontFamily: "Lobster",color: kMainColor),),

                    subtitle: Text("Single shot Espresso",style: TextStyle(fontSize: 14,),),



                  ),



                ),



              ],
            )),








          ],

        ),
      ),

    );
  }
}

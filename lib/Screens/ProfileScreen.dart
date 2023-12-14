


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = "/ProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff363636),
      body: Stack(

        children: [

          Positioned(top: 0,right: 0,left: 0,child: Image.asset("assets/images/Image.png",fit: BoxFit.cover,)),

          Positioned(
              top: 48,
              left: 20,
              child: IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/MenuScreen");
                },
                icon: Icon(Icons.menu,size: 48,color: kMainColor) ,
              )),

          Positioned(top:80,right:100  ,child: Column(
            children: [
              Image.asset("assets/images/Avatar.png"),

              Container(
                margin: EdgeInsets.only(top: 33,bottom:7 ),
                child: Text("Joanna Lee",style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: kMainColor ),),

              ),

              Text("joanna.lee@youremail.com",style: TextStyle(fontSize:14,color: kMainColor ),),

            ],
          )),

          Positioned(
            bottom: 30,
            left: 40,
            right: 40,
            child: Container(
              height: 315,
              width: 266,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
SizedBox(height: 47,),
                  Padding(padding: EdgeInsets.only(bottom: 16),child: Text("Order history",style: TextStyle(fontSize: 28,fontFamily: "Lobster",color: kMainColor),)),

                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#23VF40CCE9",style: TextStyle(fontSize: 14,color: kMainColor),),
                          Text("22/01/08",style: TextStyle(fontSize: 14,color: kMainColor),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("total order",style: TextStyle(fontSize: 12,color: kMainColor),),
                          Text("\$39.50",style: TextStyle(fontSize: 12,color: kMainColor),),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE9CBA7) ,
                      )
                    ],

                  ),
                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#WLVC00FF33",style: TextStyle(fontSize: 14,color: kMainColor),),
                          Text("22/01/08",style: TextStyle(fontSize: 14,color: kMainColor),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("total order",style: TextStyle(fontSize: 12,color: kMainColor),),
                          Text("\$28.50",style: TextStyle(fontSize: 12,color: kMainColor),),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE9CBA7) ,
                      )
                    ],

                  ),
                  Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("#334FM00CKA",style: TextStyle(fontSize: 14,color: kMainColor),),
                          Text("22/01/08",style: TextStyle(fontSize: 14,color: kMainColor),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("total order",style: TextStyle(fontSize: 12,color: kMainColor),),
                          Text("\$65.00",style: TextStyle(fontSize: 12,color: kMainColor),),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffE9CBA7) ,
                      )
                    ],

                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.white ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Total",style: TextStyle(color: kMainColor,fontSize: 18),),
                    Text(" \$133  ",style: TextStyle(color: kMainColor,fontSize: 18),)
                  ],)
                ],

              ),

            ),
          ),
        ],

      ),

    );
  }
}

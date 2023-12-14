

import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';

class InbutTextField extends StatelessWidget {
String? label;
String? hintText;
TextInputType? type;

InbutTextField({this.label,this.hintText,this.type});



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("$label",
            style: TextStyle(fontSize: 14,color: Color(0xffF5EDDA),)
        ),


        Container(
          margin: EdgeInsets.only(bottom: 27),
          decoration: BoxDecoration(
            color: kMainColor,

            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child:   TextField(

keyboardType: type,
            decoration: InputDecoration(

              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2,color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // borderSide: BorderSide(width: 2,color: Colors.greenAccent),

              ),

              hintText: "$hintText",
              suffix: Icon(Icons.email_outlined),

            ),

          ),
        ),



      ],

    );
  }
}

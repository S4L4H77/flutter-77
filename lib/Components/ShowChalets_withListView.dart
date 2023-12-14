


import 'package:flutter/material.dart';

class ShowChalets_withListView extends StatelessWidget {

String? imageURl;
 String? chaletName;

ShowChalets_withListView({this.imageURl,this.chaletName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 180,
        width: 132,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(

                blurRadius:7,
                spreadRadius: 6,
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(3,5),
              ),
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(flex: 2,
                child: Container(width: double.infinity,
                    child: Image.asset("$imageURl",fit: BoxFit.cover,))),

            Expanded(flex: 1,child: Container(child: Text("$chaletName")  )),


          ],
        ),
      ),
    );
  }
}

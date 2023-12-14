

import 'package:flutter/material.dart';

class ShowChalets_withGridView extends StatelessWidget {
  const ShowChalets_withGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing:10,
            mainAxisSpacing: 10
        ),
        scrollDirection: Axis.vertical,
        children: [

          Container(
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

                Expanded(flex: 2,child: Container(width: double.infinity,child: Image.asset("assets/images/Background 1.png",fit: BoxFit.cover,))),
                Expanded(flex: 1,child: Container(child: Text("salah")  )),


              ],
            ),
          ),

        ]
    );
  }
}

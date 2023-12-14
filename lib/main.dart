
import 'dart:ui';


import 'package:coffeapp/Components/ShowChalets_withGridView.dart';
import 'package:coffeapp/Components/ShowChalets_withListView.dart';
import 'package:coffeapp/Screens/AboutScreen.dart';
import 'package:coffeapp/Screens/Auth/LoginScreen.dart';
import 'package:coffeapp/Screens/Auth/RegisterScreen.dart';
import 'package:coffeapp/Screens/ListAndGridViewTest.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/Screens/SplachScreen.dart';
import 'package:coffeapp/Screens/StartScreen.dart';
import 'package:coffeapp/Screens/StatesScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Menu/MenuCoffeeScreen.dart';
import 'Screens/Menu/MenuScreen.dart';
import 'Screens/OrderScreen.dart';

void main(){

  runApp(MaterialApp(

    // home: AboutScreen(),
    initialRoute: AboutScreen.id,
    debugShowCheckedModeBanner: false,

    routes: {
      StartScreen.id:(context)=>StartScreen(),
      ProfileScreen.id:(context)=>ProfileScreen(),
      AboutScreen.id:(context)   =>AboutScreen(),
      MenuScreen.id:(context)=>MenuScreen(),
      MenuCoffeeScreen.id:(context)=>MenuCoffeeScreen(),
      testState.id:(context)=>testState(),
      SplachScreen.id:(context)=>SplachScreen(),
      StatesScreen.id:(context)=>StatesScreen(),
      OrderScreen.id:(context)=>OrderScreen(),
      LoginScreen.id:(context)=>LoginScreen(),
      RegisterScreen.id:(context)=>RegisterScreen(),

    },
  ),);


}


















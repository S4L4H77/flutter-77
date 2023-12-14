


import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/Components/InputTextField.dart';
import 'package:coffeapp/Components/USERS.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';
enum SingingCharacter { Rememberme, jefferson }

class RegisterScreen extends StatefulWidget {
  static const String id ="/RegisterScreen";


  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController =TextEditingController();
    passController =TextEditingController();

  }
  TextEditingController? emailController;
  TextEditingController? passController;
  TextEditingController? nameController;
  TextEditingController? pass1Controller;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController =TextEditingController();
    nameController =TextEditingController();
    passController =TextEditingController();
    pass1Controller =TextEditingController();
  }

  GlobalKey<FormState> loginGlobalKey = GlobalKey<FormState>();
  bool isclicked = true;
  bool isclicked1 = true;

  SingingCharacter? _character = SingingCharacter.Rememberme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: kMainAppColor,


      body: SafeArea(
        child:   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: loginGlobalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconButton(onPressed: (){},
                  icon: Icon(Icons.cancel_outlined,size: 48,color: kMainColor,),

                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 37,bottom: 51),
                  child:  Text("Create Account",
                    style: TextStyle(fontFamily: "Lobster",fontSize: 48,color: kMainColor,fontWeight: FontWeight.w100),

                  ),
                ),


                InbutTextField(label: "wow",hintText: "email",type: TextInputType.text,),
                InbutTextField(label: "wow",hintText: "email",type: TextInputType.text,),
                InbutTextField(label: "wow",hintText: "email",type: TextInputType.text,),
                InbutTextField(label: "wow",hintText: "email",type: TextInputType.text,),


                ListTile(
                  title: const Text('Remember me'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Rememberme,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      Colors.greenAccent;
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(top:63  ),
                  child: InkWell(onTap: (){
                    // print(password);
                    // print(emailController.text);
                    //
                    // if(emailController.text =="salahamleh45@gmail.com"&&passController.text=="1234"){
                    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StartScreen(),),);
                    //
                    // }else{
                    //   print("Error Enter a valid Email && Password");
                    // }\

                    if(loginGlobalKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(),),);
                    }else{
                      print("Error Not Valid");
                    }

                    Users a = new Users(email: "$emailController",password: "$passController",);


                  },
                      child: Box(Title: "Create",Box_color: kMainColor,Title_color: kMainAppColor,FontSize: 36,)),
                ),


              ],

            ),
          ),
        ),



      ),

    );

  }

}


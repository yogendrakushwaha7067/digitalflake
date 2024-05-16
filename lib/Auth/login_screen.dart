

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNmber=TextEditingController();
  final TextEditingController _passWord=TextEditingController();

  bool isPhoneVali=false;
  bool isPasswordVali=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(

              controller:_phoneNmber ,

              decoration: const InputDecoration(
                hintText: "Enter Phone Number"
              ),
              onChanged: (val){
                if(val.length==10) {
                  setState(() {
                    isPhoneVali=true;
                  });
                }
                else{
                  setState(() {
                    isPhoneVali=false;
                  });
                }
              },
            ),

            TextField(

              controller:_passWord ,

              decoration: const InputDecoration(
                  hintText: "Enter Password"
              ),
              onChanged: (val){

                if(val.length>=6){
                  setState(() {
                    isPasswordVali=true;
                  });
                }
                else{
                  setState(() {
                    isPasswordVali=false;
                  });
                }

              },
            ),




          SizedBox(height: 20,),
          InkWell(
            onTap:isPhoneVali==false||isPasswordVali==false?null: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeScreen();

              }));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration:  BoxDecoration(
                  color:isPhoneVali==false||isPasswordVali==false?Colors.red.withOpacity(0.5): Colors.red
                ),

                child: const Text("Login"),
              ),
          )
          ],
        ),
      ),
    );
  }
}

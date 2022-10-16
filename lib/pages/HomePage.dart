// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_page/pages/loginPage.dart';
import 'package:new_page/pages/signuppage.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 213, 226),
     body: SafeArea(
      child: Container(
       width: double.infinity,
       height: MediaQuery.of(context).size.height,
       padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("Welcome",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
              ),),
              SizedBox(height: 2,),

              Text("Welcome to my mobil application and my world ",
              textAlign:TextAlign.center,
              style: TextStyle(color: Colors.grey,
              fontSize: 15),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("image/JPG.jpg")),borderRadius: BorderRadius.circular(20)
            
            ),

          ),
          Column(
            children: [
              MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
                ),
                SizedBox(height: 5,),
                 MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                 
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
                )
            ],
          )
        ],
       ),
     )
     ),
    );
    
  }
}
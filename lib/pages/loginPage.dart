// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:new_page/pages/signuppage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor:Color.fromARGB(255, 212, 213, 226),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color.fromARGB(255, 212, 213, 226),
        leading: IconButton(onPressed: (){Navigator.pop(context);},
         icon:Icon(Icons.arrow_back_ios,
         size: 20,
         color: Colors.black,),
         ),
      ),
        body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Login Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("Login to your account",style: TextStyle(fontSize: 15,color: Colors.grey),)
              ],
            ),
            SizedBox(height: 20,),
          inputFile(label:"Email",obscureText:false),
          inputFile(label: "Password",obscureText: true),
          SizedBox(height: 20,),
          Text("Don't have a account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          TextButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>SignUpPage()));
          }, 
          child:Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
          ],
          
        )
       )
    );
  }

Widget  inputFile({label,obscureText=false}){
  return Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
  Text(
    label,
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      ),
  ),
  SizedBox(height: 5,),
  TextField(
    obscureText: obscureText,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black)
      )
    ),
  )
 ],
  );
}

}

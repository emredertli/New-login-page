// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 213, 226),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color.fromARGB(255, 212, 213, 226),
        leading: IconButton(onPressed: (){Navigator.pop(context);},
         icon:Icon(Icons.arrow_back_ios,
         size: 20,
         color: Colors.black,),
         ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.symmetric(horizontal: 40),
           height: MediaQuery.of(context).size.height-50,
           width: double.infinity,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Sign Up",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text("Create an account",style: TextStyle(fontSize: 15,color: Colors.black),)
                ],
              ),
              Column(
                children: [
                  inputFile(label:"Name"),
                  inputFile(label: "Surname"),
                  inputFile(label: "Email"),
                  inputFile(label:"Paswword",obscureText: true),
                ],
              )
            ],
           ),
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
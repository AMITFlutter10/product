import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product/view/screens/login_page.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage() ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

           Text("Welcome",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.teal[600]
            ),),
           const SizedBox(height: 40,),

           Image.asset("assets/images/pic1.jpg")

         ],
       ),
     ),
   );
  }
}
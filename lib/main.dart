


import 'package:flutter/material.dart';
import 'package:product/view/screens/home_page.dart';
import 'package:product/view/screens/login_page.dart';
import 'package:product/view/screens/oboarding/on_boarding.dart';


void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     home: OnBoarding(),
   );
  }


}





import 'package:flutter/material.dart';
import 'package:product/view/screens/home_page.dart';
import 'package:product/view/screens/login_page.dart';


void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   );
  }


}


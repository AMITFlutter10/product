


import 'package:flutter/material.dart';
import 'package:product/register_page.dart';
import 'package:product/splash_screen.dart';

import 'home_page.dart';
import 'login_page.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
   );
  }


}


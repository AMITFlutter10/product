


import 'package:flutter/material.dart';
import 'package:product/view/screens/home_page.dart';
import 'package:product/view/screens/login_page.dart';
import 'package:product/view/screens/oboarding/on_boarding_page.dart';

import 'cash_helper.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  CashHelper.init();
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginPage(),
   );
  }


}


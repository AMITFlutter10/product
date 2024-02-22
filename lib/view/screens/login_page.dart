import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product/cash_helper.dart';
import 'package:product/enums.dart';
import 'package:product/view/screens/home_page.dart';
import 'package:product/view/widgets/default_form_field.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController  emailController = TextEditingController(
    text: CashHelper.getString(key: SharedKeys.email));
TextEditingController  passwordController = TextEditingController(
    text: CashHelper.getString(key: SharedKeys.password));



class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
   return Scaffold(
     // without custom widgets
     // body : Padding(
     //   padding: const EdgeInsets.all(30),
     //   child: Column(
     //     mainAxisAlignment: MainAxisAlignment.center,
     //     children: [
     //       Text("Login", style: TextStyle(fontWeight: FontWeight.bold,
     //           fontSize: 30,
     //       color:Colors.teal[300]
     //       ),),
     //      const SizedBox(height: 20,),
     //       TextField(
     //         decoration: InputDecoration(
     //           border: OutlineInputBorder(
     //             borderRadius: BorderRadius.circular(20),
     //           ),
     //           hintText: "enter your email",
     //           labelText: "Email",
     //          // label: Text("email")
     //         ),
     //       ),
     //       const SizedBox(height: 20,),
     //
     //       TextField(
     //         obscureText: true,
     //         decoration: InputDecoration(
     //         border: OutlineInputBorder(
     //           borderRadius: BorderRadius.circular(20),
     //         ),
     //         hintText: "enter your password",
     //         labelText: "Password",
     //         // label: Text("email")
     //       ),),
     //       const SizedBox(height: 40,),
     //       ElevatedButton(onPressed: (){},
     //           child: Text("LOGIN"))
     //     ],
     //   ),
     // )

   //  with custom widgets
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
    Text("Login", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30,
          color:Colors.teal[300]
          ),),
         const SizedBox(height: 20,),
         DefaultFormField(
           controller: emailController,
           keyboardType: TextInputType.name,
           labelText: "Email",
           hintText: "enter your email",
           validator: (value){
             if(value!.isEmpty){
               return "email must not be empty";
             }
             return  null ;
           },
         ),
           const SizedBox(height: 20,),

           DefaultFormField(
           controller: passwordController,
           keyboardType: TextInputType.number,
           labelText: "password",
           hintText: "enter your password",
           validator: (value){
             if(value!.length <= 6){
               return "enter 6 digit";
             }
             return  null ;
           },
         ),
           const SizedBox(height: 40,),
                 ElevatedButton(onPressed: (){
                  CashHelper.putString(key: SharedKeys.email, value: emailController.text);
                  CashHelper.putString(key: SharedKeys.password, value: passwordController.text);
                   print(emailController.text);
                   print(passwordController.text);
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>HomePage()), (route) => false);
                 },
                     child: Text("LOGIN"))
       ],),
     ),
   );
  }
}
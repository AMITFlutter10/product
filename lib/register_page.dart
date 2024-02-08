import 'package:flutter/material.dart';

class Register extends StatefulWidget{
   Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Register", style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color:Colors.teal[300]
              ),),
              const SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "enter your name",
                  labelText: "Name",
                  // label: Text("email")
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "enter your email",
                  labelText: "Email",
                  // label: Text("email")
                ),
              ),
              const SizedBox(height: 20,),

              TextField(
                obscuringCharacter: "*",
                obscureText: obscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "enter your password",
                  labelText: "Password",
                 suffixIcon: IconButton(onPressed: (){
                   setState(() {
                     obscure =  !obscure;
                     print("done");
                   });
                 },
                   icon: obscure ? Icon(Icons.remove_red_eye) :
                   Icon(Icons.remove_red_eye_outlined, color: Colors.red,) )

                 // prefixIcon: Icon(Icons.remove_red_eye)
                  // label: Text("email")
                ),),
              const SizedBox(height: 20,),

            //   TextFormField(
            // //  validator: ,
            //       decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //   )),
              const SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "enter your phone",
                  labelText: "Phone",
                  // label: Text("email")
                ),),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){},
                  child: Text("REGISTER"))
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  String image;
  String title;
  double? price;
   ProductDetails({super.key,required this.image ,required this.title,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(image),
                SizedBox(height: 20,),
                Text(title),
                SizedBox(height: 10,),
                Text("${price}"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  ElevatedButton(onPressed: (){}, child: Center(child: Icon(Icons.minimize))),
                  Text("counter"),
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),

                ],),

                ElevatedButton(onPressed: (){}, child: Text("Add TO cart"))

              ],
            ),
          ),
        )

    );
  }
}

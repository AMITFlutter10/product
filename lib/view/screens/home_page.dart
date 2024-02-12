import 'package:flutter/material.dart';
import 'package:product/view/widgets/default_text.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title:const  DefaultText(text: 'Home',
          fontSize: 20.0,
          color: Colors.white,),
      ),
      body:
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                // padding: EdgeInsets.all(18),
                width: 150,
                height: 200,
                //color: Colors.yellow,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.fill,
                  //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                  // ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                   Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
                     width: 200,
                   ),
                    // Text("Product1 ")
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
                          DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
                        ],
                      ),
                    ),
                  ],
                ),
                     ),
                Container(
                  // padding: EdgeInsets.all(18),
                  width: 150,
                  height: 200,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   fit: BoxFit.fill,
                    //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                    // ),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
                        width: 200,
                      ),
                      // Text("Product1 ")
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
                            DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(18),
                  width: 150,
                  height: 200,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   fit: BoxFit.fill,
                    //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                    // ),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
                        width: 200,
                      ),
                      // Text("Product1 ")
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
                            DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],),
          ),
         const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // padding: EdgeInsets.all(18),
                width: 150,
                height: 200,
                //color: Colors.yellow,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.fill,
                  //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                  // ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
                      width: 200,
                    ),
                    // Text("Product1 ")
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
                          DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.all(18),
                width: 150,
                height: 200,
                //color: Colors.yellow,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.fill,
                  //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                  // ),
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
                      width: 200,
                    ),
                    // Text("Product1 ")
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
                          DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],),

        ],
      ),
    );

  }

}
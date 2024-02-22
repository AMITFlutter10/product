import 'package:flutter/material.dart';
import 'package:product/view/widgets/default_text.dart';

import '../../model/item_model.dart';
import '../../model/model.dart';
import '../product_details.dart';
import 'first_product.dart';
import 'itembulider.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key });
   @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title:const  DefaultText(text: 'Home',
          fontSize: 20.0,
          color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
               const Align(
                 alignment: AlignmentDirectional.topStart,
                   child:
                   Text("Items",style: TextStyle(fontSize: 25,color: Colors.teal ,
                       fontWeight: FontWeight.bold),)),
              const SizedBox(height: 20,),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index){
                  return FirstProduct(model: data[index],);
                  //   Container(
                  //   // width: 100,
                  //   // height: 100,
                  //   child: Column(
                  //     children: [
                  //       Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
                  //       Text("Product1"),
                  //       Text("Peice 20")
                  //     ],
                  //   ),
                  // );
                },
                  separatorBuilder: (BuildContext context, int index)
                  { return const Divider(
                    height: 10,
                    thickness:2 ,
                    color: Colors.grey,);  },),
              ),
             const SizedBox(height: 20,),
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: Text("Category",style: TextStyle(
                    fontWeight: FontWeight.bold
                    ,color: Colors.teal,
                fontSize: 25),),
              ),
              SizedBox(
              height: 200,
                width: 500,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    itemBuilder: (context, index)=> ItemBuilder(itemProduct: dataProduct[index],),
                    separatorBuilder: (context, index)=> const SizedBox(width: 20,),
                    itemCount: dataProduct.length
                ),
              ),
             SizedBox(
               height: 350,
               child: GridView.builder(
                 shrinkWrap: true,
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   // mainAxisSpacing: 0.1,
                   // crossAxisSpacing: 0.1

               ),
                   itemBuilder: (context, index)=> ItemBuilder(
                     itemProduct: dataProduct[index],),
                 itemCount: dataProduct.length,
               ),
             ),

              // InkWell(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductDetails()));
              //   },
              //   child: Container(
              //     height: 100,
              //     width: 150,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.red,
              //     ),
              //     child: Image.asset("assets/images/pic1.jpg"),
              //   ),
              // )

            ],
          ),
        ),
      ),
        //old
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //         Container(
      //           // width: 150,
      //           // height: 200,
      //           decoration: BoxDecoration(
      //            // color: Colors.yellow,
      //             borderRadius: BorderRadius.circular(20),
      //             gradient:const LinearGradient(
      //                 colors: [
      //               Colors.green,
      //               Colors.pink,
      //               Colors.red
      //             ],
      //                 begin: Alignment.bottomCenter,
      //                 end:Alignment.topCenter
      //
      //             ),
      //             // image: DecorationImage(
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU")
      //             // )
      //           ),
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //
      //                Text("Product 1")
      //             ],
      //           ),
      //
      //         ),
      //       Container(
      //       // width: 150,
      //       // height: 200,
      //       decoration: BoxDecoration(
      //         // color: Colors.yellow,
      //         borderRadius: BorderRadius.circular(20),
      //         gradient:const LinearGradient(
      //             colors: [
      //               Colors.green,
      //               Colors.pink,
      //               Colors.red
      //             ],
      //             begin: Alignment.bottomCenter,
      //             end:Alignment.topCenter
      //
      //         ),
      //         // image: DecorationImage(
      //         //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU")
      //         // )
      //       ),
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //
      //           Text("Product 1")
      //         ],
      //       ),
      //
      //     ),
      //        Container(
      //       // width: 150,
      //       // height: 200,
      //       decoration: BoxDecoration(
      //         // color: Colors.yellow,
      //         borderRadius: BorderRadius.circular(20),
      //         gradient:const LinearGradient(
      //             colors: [
      //               Colors.green,
      //               Colors.pink,
      //               Colors.red
      //             ],
      //             begin: Alignment.bottomCenter,
      //             end:Alignment.topCenter
      //
      //         ),
      //         // image: DecorationImage(
      //         //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU")
      //         // )
      //       ),
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //
      //           Text("Product 1")
      //         ],
      //       ),
      //
      //     ),
      //     Container(
      //       // width: 150,
      //       // height: 200,
      //       decoration: BoxDecoration(
      //         // color: Colors.yellow,
      //         borderRadius: BorderRadius.circular(20),
      //         gradient:const LinearGradient(
      //             colors: [
      //               Colors.green,
      //               Colors.pink,
      //               Colors.red
      //             ],
      //             begin: Alignment.bottomCenter,
      //             end:Alignment.topCenter
      //
      //         ),
      //         // image: DecorationImage(
      //         //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU")
      //         // )
      //       ),
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //
      //           Text("Product 1")
      //         ],
      //       ),
      //
      //     ),
      //      ],
      // )
        // old
      // Column(
      //   children: [
      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Container(
      //           // padding: EdgeInsets.all(18),
      //           width: 150,
      //           height: 200,
      //           //color: Colors.yellow,
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   fit: BoxFit.fill,
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //             // ),
      //             color: Colors.yellow,
      //             borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Column(
      //             children: [
      //              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                width: 200,
      //              ),
      //               // Text("Product1 ")
      //               const Padding(
      //                 padding: EdgeInsets.all(10.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                     DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //                ),
      //           Container(
      //             // padding: EdgeInsets.all(18),
      //             width: 150,
      //             height: 200,
      //             //color: Colors.yellow,
      //             decoration: BoxDecoration(
      //               // image: DecorationImage(
      //               //   fit: BoxFit.fill,
      //               //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //               // ),
      //                 color: Colors.yellow,
      //                 borderRadius: BorderRadius.circular(20)
      //             ),
      //             child: Column(
      //               children: [
      //                 Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                   width: 200,
      //                 ),
      //                 // Text("Product1 ")
      //                 Padding(
      //                   padding: const EdgeInsets.all(10.0),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                       DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             // padding: EdgeInsets.all(18),
      //             width: 150,
      //             height: 200,
      //             //color: Colors.yellow,
      //             decoration: BoxDecoration(
      //               // image: DecorationImage(
      //               //   fit: BoxFit.fill,
      //               //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //               // ),
      //                 color: Colors.yellow,
      //                 borderRadius: BorderRadius.circular(20)
      //             ),
      //             child: Column(
      //               children: [
      //                 Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                   width: 200,
      //                 ),
      //                 // Text("Product1 ")
      //                 Padding(
      //                   padding: const EdgeInsets.all(10.0),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                       DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //       ],),
      //     ),
      //    const SizedBox(height: 20,),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           // padding: EdgeInsets.all(18),
      //           width: 150,
      //           height: 200,
      //           //color: Colors.yellow,
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   fit: BoxFit.fill,
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //             // ),
      //               color: Colors.yellow,
      //               borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Column(
      //             children: [
      //               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                 width: 200,
      //               ),
      //               // Text("Product1 ")
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                     DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           // padding: EdgeInsets.all(18),
      //           width: 150,
      //           height: 200,
      //           //color: Colors.yellow,
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   fit: BoxFit.fill,
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //             // ),
      //               color: Colors.yellow,
      //               borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Column(
      //             children: [
      //               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                 width: 200,
      //               ),
      //               // Text("Product1 ")
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                     DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],),
      //     const SizedBox(height: 20,),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           // padding: EdgeInsets.all(18),
      //           width: 150,
      //           height: 200,
      //           //color: Colors.yellow,
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   fit: BoxFit.fill,
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //             // ),
      //               color: Colors.yellow,
      //               borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Column(
      //             children: [
      //               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                 width: 200,
      //               ),
      //               // Text("Product1 ")
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                     DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           // padding: EdgeInsets.all(18),
      //           width: 150,
      //           height: 200,
      //           //color: Colors.yellow,
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   fit: BoxFit.fill,
      //             //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU"),
      //             // ),
      //               color: Colors.yellow,
      //               borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Column(
      //             children: [
      //               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsh-JRM782urGt0SoNQkCRP-ASCm7FUZ9q-w&usqp=CAU",
      //                 width: 200,
      //               ),
      //               // Text("Product1 ")
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     DefaultText(text: "Product 1",fontSize: 12,fontWeight: FontWeight.bold,),
      //                     DefaultText(text: "Price :20L.E",fontSize: 10,fontWeight: FontWeight.w700,),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],),
      //   ],
      // ),
    );

  }

}
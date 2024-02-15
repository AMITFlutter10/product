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
                height: 300,
                child: ListView.separated(
                  shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index){
                  return ListTile(
                      leading: Image.asset("assets/images/picc3.png") ,
                      title: Text("Product1"),
                      subtitle: Text("price"),
                      trailing: Icon(Icons.favorite, color: Colors.red,),
                  );
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
              height: 300,
                width: 500,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    itemBuilder: (context, index)=> Container(
                      child: Column(
                        children: [
                          Image.asset("assets/images/picc3.png",width: 100,height: 100,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("product"),
                            ],
                          )
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index)=> const SizedBox(width: 20,),
                    itemCount: 3),
              )
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
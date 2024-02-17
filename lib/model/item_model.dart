import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemModel{
  String? name;
  String? image;
  double? price ;
  Icon? icons;
  IconData? icon;
  ItemModel({this.price, this.name, this.icon,this.icons, this.image});
}


List <ItemModel> data =[
  ItemModel(price: 20, name: "p1", icon: Icons.favorite , icons:Icon(Icons.favorite),image: "assets/images/picc3.png" ),
  ItemModel(price: 80, name: "p2", icons:  Icon(Icons.favorite, color: Colors.red,),image: "assets/images/pic1.jpg"),
  ItemModel(price: 90, name: "p3", icons:  Icon(Icons.favorite),image: "assets/images/picc3.png"),
  ItemModel(price: 90, name: "p4", icons:  Icon(Icons.favorite),image: "assets/images/picc3.png"),
  ItemModel(price: 990, name: "p45", icons:  Icon(Icons.ac_unit_rounded),image: "assets/images/picc3.png"),
];
import 'package:flutter/material.dart';
import 'package:product/model/item_model.dart';

class FirstProduct extends StatelessWidget {
  ItemModel model = ItemModel();

  FirstProduct({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("${model.image}") ,
      title: Text("${model.name}"),
      subtitle: Text("${model.price}"),
     trailing: model.icons,
     // trailing: Icon(model.icon),
    );
  }
}

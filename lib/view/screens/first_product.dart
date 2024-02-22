import 'package:flutter/material.dart';
import 'package:product/model/item_model.dart';
import 'package:product/view/product_details.dart';

class FirstProduct extends StatelessWidget {
  ItemModel model = ItemModel();

  FirstProduct({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>
            ProductDetails(image: "${model.image}",
          title: "${model.name}", price: model.price,)));
      },
      child: ListTile(
        leading: Image.asset("${model.image}") ,
        title: Text("${model.name}"),
        subtitle: Text("${model.price}"),
       trailing: model.icons,
       // trailing: Icon(model.icon),
      ),
    );
  }
}

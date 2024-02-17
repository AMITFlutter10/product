import 'package:flutter/cupertino.dart';

import '../../model/model.dart';

class ItemBuilder extends StatelessWidget {
  Product itemProduct =Product();

   ItemBuilder({super.key,required this.itemProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("${itemProduct.image}",width: 100,height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${itemProduct.name}"),
              Text("${itemProduct.price}")
            ],
          )
        ],
      ),
    );
  }
}

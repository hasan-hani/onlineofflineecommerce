import 'package:flutter/material.dart';
import '/screen/userscreen/buyingpage.dart';


class ProductItem extends StatelessWidget {
  final String name ;
  final String description;
  final String Urlimage ;
  final double price ;

   ProductItem({required this.name,
    required this.description,
    required this.Urlimage,
    required this.price}) ;
   void gotobuyproduct(BuildContext ctx){
     Navigator.of(ctx).pushNamed(BuyingPage.id,arguments: {
       'name':name,
       'description':description,
       'Urlimage':Urlimage,
       'price':price
     });
   }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){gotobuyproduct(context);},
      child: Column(
        children: [
          Image.asset(Urlimage),
          Center(child: Text('name:$name price:$price'))
        ],
      ),
    );
  }
}


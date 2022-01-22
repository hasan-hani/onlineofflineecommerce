
import 'package:flutter/material.dart';
import 'package:onlineofflineecom/model/productApi.dart';
import 'package:onlineofflineecom/widget/productItemeApi.dart';

class FavoritPage extends StatelessWidget {
  static String id='FavoritPage';

  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width ;
    List<Product> listOfProduct= ModalRoute.of(context)!.settings.arguments as List<Product>;
    List<Product> listOfFavoritPrroduct=[];
    listOfProduct.forEach((product) {
      if(product.isfavorit==true) { listOfFavoritPrroduct.add(product); }
    });
    return Scaffold(
      appBar:AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: _width / 2,
        ),
        children: listoffavorit
            .map((productapi) => ProductItemeApi(
            productapi.id,
            productapi.title,
            productapi.price,
            productapi.description,
            productapi.category,
            productapi.image,
            productapi.rating,
            productapi.isfavorit,
            false,
        )
        )
            .toList(),
      ),

    );
  }
}

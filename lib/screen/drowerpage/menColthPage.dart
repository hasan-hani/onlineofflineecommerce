import 'package:flutter/material.dart';
import '/model/productApi.dart';
import '/widget/productItemeApi.dart';

class MenClothPage extends StatelessWidget {
  const MenClothPage({Key? key}) : super(key: key);
  static String id='MenClothPage';
  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width ;
    final productarg =ModalRoute.of(context)!.settings.arguments as List<Product> ;
    final List<Product> listOfMenClothing=productarg.where((product) =>product.category=="men's clothing" ).toList();
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: _width / 2,
        ),
        children: listOfMenClothing
            .map((productapi) => ProductItemeApi(
            productapi.id,
            productapi.title,
            productapi.price,
            productapi.description,
            productapi.category,
            productapi.image,
            productapi.rating,
            productapi.isfavorit,
            false
        )
        )
            .toList(),
      ),
    );
  }
}

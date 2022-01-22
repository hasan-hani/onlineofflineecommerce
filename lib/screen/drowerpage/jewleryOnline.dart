import 'package:flutter/material.dart';
import '/model/productApi.dart';
import '/screen/userscreen/onlineUserPage.dart';
import '/widget/drawerOnline.dart';
import '/widget/productItemeApi.dart';

class JewleryOnline extends StatefulWidget {
  const JewleryOnline({Key? key}) : super(key: key);
  static String id='JewleryOnline' ;

  @override
  State<JewleryOnline> createState() => _JewleryOnlineState();
}

class _JewleryOnlineState extends State<JewleryOnline> {
  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width ;
    final productarg =ModalRoute.of(context)!.settings.arguments as List<Product> ;
    final List<Product> listOfJewelry=productarg.where((product) =>product.category=="jewelery" ).toList();
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: _width / 2,
        ),
        children: listOfJewelry
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
        ))
            .toList(),
      ),
    );

  }
}

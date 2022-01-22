import 'package:flutter/material.dart';
import '/widget/buyproduct.dart';

class BuyingPage extends StatelessWidget {
  const BuyingPage({Key? key}) : super(key: key);
  static String id='BuyingPage' ;
  @override
  Widget build(BuildContext context) {
    double _hiegth=MediaQuery.of(context).size.height;
    double _width=MediaQuery.of(context).size.width ;
    final arg=ModalRoute.of(context)!.settings.arguments as Map ;
    final argUrlimage=arg['Urlimage'];
    final argname=arg['name'];
    final argdescription=arg['description'];
    final argprice=arg['price'];
    return BuyProduct(
      name: argname,
      description: argdescription,

      Urlimage: argUrlimage,
      price: argprice,
    );

  }
}


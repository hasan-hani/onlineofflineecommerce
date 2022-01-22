import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/widget/cartitem.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static String id='CartPage' ;
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double _totalPrice=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _totalPrice=0;
          listofcart.forEach((cart) {_totalPrice=cart.price*cart.countofitem+_totalPrice ; });
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text('the total price is:$_totalPrice'),
              actions: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    listofcart=[];
                    Navigator.of(context).pop();
                  });
                }, child: Text('OK')),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pop();
                },child:Text('cancel')),
              ],

            );
          },) ;

        },
        child: Text('buy'),
      ),
      appBar: AppBar(),
      body: ListView(
        children: listofcart.map((cart) =>CartItem(cart.Urlimage,cart.price, cart.countofitem)).toList(),
      ),
    );
  }
}

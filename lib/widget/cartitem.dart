import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/screen/drowerpage/cartpage.dart';

class CartItem extends StatefulWidget {
  String Urlimage ;
  double price;
  int countofitem ;
  CartItem(this.Urlimage,this.price,this.countofitem);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width ;
    return Container(
      child: Row(
        children: [
          Container(
            child: Image.network(widget.Urlimage),
            width: _width/4,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: _width*0.01),
            child: FittedBox(child: Text('${widget.price}')),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width*0.01),
            child: FittedBox(child:Text('${widget.countofitem}') ,)
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              listofcart.removeWhere((cart) { return cart.Urlimage==widget.Urlimage;});
              Navigator.of(context).pushReplacementNamed(CartPage.id);
            });
          }, child: FittedBox(child: Text('Delete'),))
        ],

      ),
    );
  }
}

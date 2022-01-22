import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/model/cart.dart';

class BuyProduct extends StatelessWidget {
  final String name ;
  final String description;
  final String Urlimage ;
  final double price ;

  BuyProduct({required this.name,
    required this.description,
    required this.Urlimage,
    required this.price}) ;

  @override
  Widget build(BuildContext context) {
    double _height=MediaQuery.of(context).size.height ;
    double _width=MediaQuery.of(context).size.width ;
    int numberofitem=1 ;
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton:FloatingActionButton(onPressed: () {
        showDialog(context: context, builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: Text('how many number of thing do you want to buy'),
                content: Row(
                  children: [
                    IconButton(onPressed: () {
                      setState(() {
                        if(numberofitem>1){numberofitem--;} ;
                      });
                    }, icon: Icon(Icons.remove)),
                    Text(numberofitem.toString()),
                    IconButton(onPressed: () {
                      setState(() {
                        numberofitem++ ;
                      });
                    }, icon: Icon(Icons.add)),
                  ],
                ),
                actions: [
                  ElevatedButton(onPressed: () {
                    listofcart.add(Cart(Urlimage: Urlimage, price: price, countofitem: numberofitem));
                    Navigator.of(context).pop();
                  }, child:Text('Ok') ),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child:Text('Cancel') ),


                ],
              ) ;
            },
          );
        },);

      },
        child: Text('buy'),),
      body:Center(
        child: ListView(
         children: [
           Image.network(Urlimage,height: _height/2,),
           Text('name:$name'),
           Text('price:$price'),
           Text(description),
         ],
        ),
      ) ,
    );
  }
}


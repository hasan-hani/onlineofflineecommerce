import 'dart:convert';
import 'package:onlineofflineecom/model/productApi.dart';
import 'package:http/http.dart' as http ;
import 'package:flutter/material.dart';
import '/screen/userscreen/buyingpage.dart';
List<Product> listoffavorit=[] ;
class ProductItemeApi extends StatefulWidget {
  int id;
  String title;
  double price ;
  String description;
  String category;
  String image ;
  Map rating;
  bool isfavorite ;
  bool isonlineuserpage ;
  ProductItemeApi(this.id,this.title,this.price,this.description,this.category,this.image,this.rating,this.isfavorite,this.isonlineuserpage);

  @override
  State<ProductItemeApi> createState() => _ProductItemeApiState();
}

class _ProductItemeApiState extends State<ProductItemeApi> {
  _selectItem(BuildContext cx){
    Navigator.of(cx).pushNamed(BuyingPage.id,arguments: {
      'name':widget.title,
      'description':widget.description,
      'Urlimage':widget.image,
      'price':widget.price
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height=MediaQuery.of(context).size.height ;
    return Container(
      child: Center(
        child: Column(
          children: [
            InkWell(
              onTap:(){_selectItem(context);},
                child: Image.network(widget.image,height:_height/3 ,width: double.infinity,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('price:${widget.price}'),
                if(widget.isonlineuserpage) IconButton(onPressed: () {
                  setState(() {
                    widget.isfavorite=!widget.isfavorite ;
                    if(widget.isfavorite==true){
                      listoffavorit.add(
                          Product(id: widget.id, title:widget.title, price:widget.price, description:widget.description, category:widget.category, image:widget.image, rating: widget.rating, isfavorit: true)
                      );
                    }
                    if(widget.isfavorite==false){
                      listoffavorit.removeWhere((product) => product.id==widget.id) ;

                    }
                  });
                }, icon:  Icon(widget.isfavorite? Icons.favorite:Icons.favorite_border))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

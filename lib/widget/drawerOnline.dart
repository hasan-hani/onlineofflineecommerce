import 'package:onlineofflineecom/screen/drowerpage/favoritPage.dart';
import 'package:onlineofflineecom/widget/productItemeApi.dart';
import 'package:flutter/material.dart';
import '/model/productApi.dart';
import '/screen/drowerpage/jewleryOnline.dart';
import '/screen/drowerpage/menColthPage.dart';

class DrawerOnline extends StatelessWidget {
  final List<Product> productApi ;
  DrawerOnline(this.productApi);
  buildListTile(String title,void fun()){
    return ListTile(title: Text(title),onTap: fun,
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        buildListTile( 'jewley', () {  Navigator.of(context).pushNamed(JewleryOnline.id,arguments:productApi);}),
        buildListTile( 'Men Cloth', () {  Navigator.of(context).pushNamed(MenClothPage.id,arguments:productApi);}),
        buildListTile('MY Favorit', () {Navigator.of(context).pushNamed(FavoritPage.id,arguments: listoffavorit) ;})
      ],
    );
  }
}

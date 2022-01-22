import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/model/productApi.dart';
import 'dart:convert' as convert;

import '/screen/userscreen/tabBarPage.dart';
import '/widget/drawerOnline.dart';
import '/widget/productItemeApi.dart';



class OnlineUserPage extends StatefulWidget {
  const OnlineUserPage({Key? key}) : super(key: key);

  @override
  State<OnlineUserPage> createState() => _OnlineUserPageState();
}

class _OnlineUserPageState extends State<OnlineUserPage> {
  @override
  Widget build(BuildContext context) {
    getproductdata() async {
      var url = 'https://fakestoreapi.com/products';
      var respons = await http.get(Uri.parse(url));
      List product1 = jsonDecode(respons.body);
      List<Product> productApi = [];
      for (int i = 0; i < product1.length; i++) {
        productApi.add(Product(
            id: product1[i]['id'],
            title: product1[i]['title'],
            price: product1[i]["price"],
            description: product1[i]["description"],
            category: product1[i]["category"],
            image: product1[i]['image'],
            rating: product1[i]['rating'],
            isfavorit: false,
        ));
      }

      return productApi;
    }
    double _heigth = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    List<Product> listofproduct=[];
    return FutureBuilder(
      future: getproductdata(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Scaffold(
              appBar: AppBar(),
              body: Center(child: Text('wait network')));
        }
        return Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
            child: DrawerOnline(snapshot.data! as List<Product>),
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: _width / 2,
            ),
            children: (snapshot.data! as List<Product>)
                .map((productapi) => ProductItemeApi(
                    productapi.id,
                    productapi.title,
                    productapi.price,
                    productapi.description,
                    productapi.category,
                    productapi.image,
                    productapi.rating,
                    productapi.isfavorit,
                    true,
            ))
                .toList(),
          ),
        );
      },
    );
  }
}

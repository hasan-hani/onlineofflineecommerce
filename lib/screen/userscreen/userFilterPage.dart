import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/model/productclass.dart';
import '/widget/productitem.dart';

class UserFilterPage extends StatefulWidget {
  const UserFilterPage({Key? key}) : super(key: key);
  static String id='UserFilterPage';
  @override
  _UserFilterPageState createState() => _UserFilterPageState();
}

class _UserFilterPageState extends State<UserFilterPage> {
  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width ;
    final arg=ModalRoute.of(context)!.settings.arguments as Map ;
    final double pricemore=arg['pricemore'];
    final double priceless=arg['priceless'];
    List<ProductClass> filterPriceCameraList=[];
    cameralist.forEach((element) {
      if(element.price<priceless&&element.price>pricemore){
        filterPriceCameraList.add(element) ;
      }
    });
    List<ProductClass> filterPricemenList=[];
    menclothinglist.forEach((element) {
      if(element.price<priceless&&element.price>pricemore){
        filterPricemenList.add(element) ;
      }
    });
    List<ProductClass> filterPricejewList=[];
    jewlerylist.forEach((element) {
      if(element.price<priceless&&element.price>pricemore){
        filterPricejewList.add(element) ;
      }
    });
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) {
              // typeofproduct=value ;
            },
            tabs: [
              Tab(
                child: Text('camera'),

              ),
              Tab(child: Text('menclothing')),
              Tab(
                child: Text('jewlery'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 0.45*_width,
                  childAspectRatio: 1/1,
                  crossAxisSpacing:0.05*_width,
                ),
                children:
                filterPriceCameraList.map((e) => ProductItem(
                  price:e.price,
                  name: e.name,
                  Urlimage: e.Urlimage,
                  description: e.description,)).toList()

            ),
            GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 0.45*_width,
                  childAspectRatio: 1/1,
                  crossAxisSpacing:0.05*_width,
                ),
                children:
                filterPricemenList.map((e) => ProductItem(
                  price:e.price,
                  name: e.name,
                  Urlimage: e.Urlimage,
                  description: e.description,)).toList()

            ),
            GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 0.45*_width,
                  childAspectRatio: 1/1,
                  crossAxisSpacing:0.05*_width,
                ),
                children:
                filterPricejewList.map((e) => ProductItem(
                  price:e.price,
                  name: e.name,
                  Urlimage: e.Urlimage,
                  description: e.description,)).toList()

            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/screen/userscreen/userFilterPage.dart';
import '/widget/drowerwidget.dart';
import '/widget/productitem.dart';
import 'dart:math';

import '../../services/searchData.dart';

class UserProductHomaPage extends StatefulWidget {
  const UserProductHomaPage({Key? key}) : super(key: key);
  static String id = 'UserProductHomaPage';
  @override
  _UserProductHomaPageState createState() => _UserProductHomaPageState();
}

class _UserProductHomaPageState extends State<UserProductHomaPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    List listofprice = [];
    jewlerylist.forEach((element) {
      listofprice.add(element.price);
    });
    cameralist.forEach((element) {
      listofprice.add(element.price);
    });
    menclothinglist.forEach((element) {
      listofprice.add(element.price);
    });
    int maxprice =
        listofprice.reduce((curr, next) => curr > next ? curr : next);
    int minprice =
        listofprice.reduce((curr, next) => curr < next ? curr : next);
    double midpriceless = (maxprice + minprice) / 2;
    double midpricemor = (maxprice + minprice) / 2;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: DrowerWidget(),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchData());
                  // showSearch(context: context, delegate: SearchData()) ;
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return (AlertDialog(
                            title: Column(
                              children: [
                                Text('less than'),
                                Slider(
                                  value: midpriceless,
                                  onChanged: (value) {
                                    setState(() {
                                      midpriceless = value;
                                    });
                                  },
                                  max: maxprice + 1000,
                                  min: minprice - 1000,
                                ),
                                Text(midpriceless.ceil().toString()),
                              ],
                            ),
                            content: Column(
                              children: [
                                Text('more than'),
                                Slider(
                                  value: midpricemor,
                                  onChanged: (value) {
                                    setState(() {
                                      midpricemor = value;
                                    });
                                  },
                                  max: maxprice + 1000,
                                  min: minprice - 1000,
                                ),
                                Text(midpricemor.ceil().toString()),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        UserFilterPage.id,
                                        arguments: {
                                          'priceless': midpriceless,
                                          'pricemore': midpricemor
                                        });
                                  },
                                  child: Text('ok')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('cancel')),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text('cancel filter'))
                            ],
                          ));
                        },
                      );
                    },
                  );
                },
                icon: Icon(Icons.fifteen_mp)),
          ],
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
                  maxCrossAxisExtent: 0.45 * _width,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 0.05 * _width,
                ),
                children: cameralist
                    .map((product) => ProductItem(
                          price: product.price,
                          name: product.name,
                          Urlimage: product.Urlimage,
                          description: product.description,
                        ))
                    .toList()),
            GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 0.45 * _width,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 0.05 * _width,
                ),
                children: menclothinglist
                    .map((e) => ProductItem(
                          price: e.price,
                          name: e.name,
                          Urlimage: e.Urlimage,
                          description: e.description,
                        ))
                    .toList()),
            GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 0.45 * _width,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 0.05 * _width,
                ),
                children: jewlerylist
                    .map((e) => ProductItem(
                          price: e.price,
                          name: e.name,
                          Urlimage: e.Urlimage,
                          description: e.description,
                        ))
                    .toList()),
          ],
        ),
      ),
    );
  }
}

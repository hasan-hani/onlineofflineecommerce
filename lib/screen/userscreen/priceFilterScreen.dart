import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/widget/productitem.dart';

class PriceFilterScreen extends StatefulWidget {
  const PriceFilterScreen({Key? key}) : super(key: key);

  @override
  _PriceFilterScreenState createState() => _PriceFilterScreenState();
}

class _PriceFilterScreenState extends State<PriceFilterScreen> {
  @override
  Widget build(BuildContext context) {
    double _width=MediaQuery.of(context).size.width;

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
                cameralist.map((e) => ProductItem(
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
                menclothinglist.map((e) => ProductItem(
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
                jewlerylist.map((e) => ProductItem(
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

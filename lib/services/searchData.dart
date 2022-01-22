import 'package:flutter/material.dart';
import '/app_data/product_data.dart';
import '/widget/productitem.dart';

class SearchData extends SearchDelegate{
  @override
   buildActions(BuildContext context) {
    return [IconButton(onPressed: () {
      query='';
    }, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      close(context,null) ;
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List camerasearchfilter=[];
    cameralist.forEach((element) {if(element.name.contains(query.toString())){
      camerasearchfilter.add(element);
    }});
    List mensearchfilter=[];
    menclothinglist.forEach((element) {if(element.name.contains(query.toString())){
      mensearchfilter.add(element); }});
    List jewlerysearchfilter=[];
    jewlerylist.forEach((element) {if(element.name.contains(query.toString())){
      jewlerysearchfilter.add(element); } });
    double _width=MediaQuery.of(context).size.width ;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('camera',style: TextStyle(color: Colors.black),),
              ),
              Tab(child: Text('menclothing',style: TextStyle(color:Colors.black),)),
              Tab(
                child: Text('jewlery',style:TextStyle(color: Colors.black) ),
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
                children: camerasearchfilter
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
                children: mensearchfilter
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
                children: jewlerysearchfilter
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

  @override
  Widget buildSuggestions(BuildContext context) {
    List camerasearchfilter=[];
    cameralist.forEach((element) {if(element.name.contains(query.toString())){
      camerasearchfilter.add(element);
    }});
    List mensearchfilter=[];
    menclothinglist.forEach((element) {if(element.name.contains(query.toString())){
      mensearchfilter.add(element); }});
    List jewlerysearchfilter=[];
    jewlerylist.forEach((element) {if(element.name.contains(query.toString())){
      jewlerysearchfilter.add(element); } });
    double _width=MediaQuery.of(context).size.width ;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('camera',style: TextStyle(color: Colors.black),),
              ),
              Tab(child: Text('menclothing',style: TextStyle(color:Colors.black),)),
              Tab(
                child: Text('jewlery',style:TextStyle(color: Colors.black) ),
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
                children: camerasearchfilter
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
                children: mensearchfilter
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
                children: jewlerysearchfilter
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
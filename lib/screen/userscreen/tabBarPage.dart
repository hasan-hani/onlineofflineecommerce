import 'dart:convert';
import 'package:onlineofflineecom/widget/productItemeApi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '/screen/userscreen/onlineUserPage.dart';
import '/screen/userscreen/userProductHomaPage.dart';
List productData=[];
class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);
  static String id='TabBarPage';

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  void _selectbar(int index){

    setState(() {
      listoffavorit=[];
      _selectedScreenIndex=index;

    });

  }
  int _selectedScreenIndex=0;
  List<Widget> _screen=[
    UserProductHomaPage(),
    OnlineUserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectbar,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label:'offline' ),
          BottomNavigationBarItem(icon:Icon(Icons.alt_route_outlined),label: 'online')
        ],
      ),
    );
  }
}

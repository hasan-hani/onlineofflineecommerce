import 'package:flutter/material.dart';
import '/app_data/constant.dart';
import '/screen/profile/login.dart';
import '../../services/sharedPrefrence.dart';
class WelcomPage extends StatefulWidget {
  const WelcomPage({Key? key}) : super(key: key);
  static String id='WelcomPage' ;
  @override
  _WelcomPageState createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    double _height=MediaQuery.of(context).size.height ;
    double _width=MediaQuery.of(context).size.width ;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: Image.asset('images/buyimage.jpg'),
              onTap: () {
                isfirsttime=false ;
                saveprefrenceisfirsttime() ;
                Navigator.of(context).pushReplacementNamed(Login.id);
              },
            ),
            SizedBox(),
            Text('welcom Page'),
          ],
        ),
      ),
    );
  }
}

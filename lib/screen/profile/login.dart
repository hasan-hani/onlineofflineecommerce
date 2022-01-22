

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineofflineecom/screen/userscreen/tabBarPage.dart';
import '/app_data/constant.dart';
import '/screen/profile/signup.dart';
import '/screen/userscreen/userProductHomaPage.dart';
import '/widget/customeTextField.dart';
import '../../services/sharedPrefrence.dart';
// import '../generated/codegen_loader.g.dart';
// import 'package:easy_localization/easy_localization.dart';
String _selectedgroup='user';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id = 'Login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Container(
          height: _height / 3,
          width: _width / 3,
          child: Image.asset('images/buyimage.jpg'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFiled(
            hint: 'Enter your Name',
          icon: Icons.person,
        ),
            customTextFiled(
              hint: 'Enter your Email',
              icon: Icons.email,
            ),
            customTextFiled(
                hint: 'Enter your Password',
                icon: Icons.security),



            ElevatedButton(
                onPressed: () {
                  isadminprofil=isadmin ;
                  saveprefrenceisadminprofil() ;
                  islogin=true ;
                  saveprefreneislogin() ;
                   Navigator.of(context).pushReplacementNamed(TabBarPage.id);
                  //isadmin? Navigator.of(context).pushNamed(AdminMainPage.id):Navigator.of(context).pushReplacementNamed(UserHomePage.id);
                },
                child: Text('Login')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Dont have an acount'),
                GestureDetector(
                  child: Text(
                    'register',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(SignUp.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

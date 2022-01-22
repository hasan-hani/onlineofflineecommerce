import 'package:flutter/material.dart';
import '/widget/customeTextField.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id ='SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double _height=MediaQuery.of(context).size.height ;
    double _width =MediaQuery.of(context).size.width ;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/buyimage.jpg'
            )
          )
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customTextFiled(hint: 'Enter your Name', icon: Icons.person),
            customTextFiled(hint: 'Enter your Phone', icon: Icons.phone),
            customTextFiled(hint: 'Enter your Email', icon: Icons.email),
            customTextFiled(hint: 'Enter your Password', icon: Icons.security),
            ElevatedButton(onPressed: () {

            }, child: Text('SignUp')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('I have an acount'),
                GestureDetector(
                  child: Text('Login ',style:TextStyle(color: Colors.red),
                  ),onTap: () {
                  Navigator.of(context).pop();
                },),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '/app_data/constant.dart';
import '/screen/profile/login.dart';
import '/screen/profile/welcomPage.dart';
import '/screen/userscreen/userProductHomaPage.dart';
import '../../services/sharedPrefrence.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static String id='SplashPage' ;

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: GestureDetector(
          onTap: (){
            getprfrenceisfirsttime() ;
            getprefrenceisadminprofil() ;
            getprevrenceislogin() ;
            setState(() {
              if(isfirsttime==true){Navigator.of(context).pushReplacementNamed(WelcomPage.id);}
              if(isfirsttime==false&&islogin==false){Navigator.of(context).pushReplacementNamed(Login.id);}
              // if(isfirsttime==false&&islogin==true&&isadminprofil==true){Navigator.of(context).pushReplacementNamed(AdminMainPage.id);}
              if(isfirsttime==false&&islogin==true&&isadminprofil==false){Navigator.of(context).pushReplacementNamed(UserProductHomaPage.id);}
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:  Image.asset('images/splashimage.jpg'),
          ),
        ),
      )

    );
  }
}

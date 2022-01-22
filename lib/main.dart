import 'dart:convert';
import 'package:onlineofflineecom/screen/drowerpage/favoritPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import '../screen/drowerpage/cartpage.dart';
import '../screen/drowerpage/jewleryOnline.dart';
import '../screen/drowerpage/menColthPage.dart';
import '../screen/profile/login.dart';
import '../screen/profile/signup.dart';
import '../screen/profile/splashPage.dart';
import '../screen/profile/welcomPage.dart';
import '../screen/userscreen/buyingpage.dart';
import '../screen/userscreen/tabBarPage.dart';
import '../screen/userscreen/userFilterPage.dart';
import '../screen/userscreen/userProductHomaPage.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert' as convert;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('en'),Locale('ar')],
      path: 'assets/translations'));
  //const MyApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Ecommerce',
      home:SplashPage(),
      routes: {
        UserProductHomaPage.id:(context)=>UserProductHomaPage(),
        BuyingPage.id:(context)=>BuyingPage(),
        UserFilterPage.id:(context)=>UserFilterPage(),
        WelcomPage.id:(context)=>WelcomPage(),
        Login.id:(context)=>Login(),
        SignUp.id:(context)=>SignUp(),
        SplashPage.id:(context)=>SplashPage(),
        CartPage.id:(context)=>CartPage(),
        TabBarPage.id:(context)=>TabBarPage(),
        JewleryOnline.id:(context)=>JewleryOnline(),
        MenClothPage.id:(context)=>MenClothPage(),
        FavoritPage.id:(context)=>FavoritPage(),
      },
    );
  }
}



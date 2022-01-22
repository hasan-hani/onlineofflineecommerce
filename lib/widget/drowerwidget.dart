import 'package:onlineofflineecom/app_data/constant.dart';
import 'package:onlineofflineecom/translations/locale_keys.g.dart';
import 'package:onlineofflineecom/services/sharedPrefrence.dart';
import 'package:flutter/material.dart';
import '/screen/drowerpage/cartpage.dart';
import '/screen/profile/login.dart';
import '/screen/userscreen/onlineUserPage.dart';
import 'package:easy_localization/easy_localization.dart';
import '../translations/locale_keys.g.dart';

class DrowerWidget extends StatefulWidget {
  const DrowerWidget({Key? key}) : super(key: key);

  @override
  State<DrowerWidget> createState() => _DrowerWidgetState();
}

class _DrowerWidgetState extends State<DrowerWidget> {
  Widget buildlisttile(IconData icon,String title,void ontapfun()){
    return ListTile(
      onTap:ontapfun ,
      leading: Icon(icon),
      title: Text(title),
    );
}

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildlisttile(Icons.settings, LocaleKeys.setting.tr(),(){}),
        buildlisttile(Icons.public, LocaleKeys.changlanguage.tr(), ()async{
          isenglish=!isenglish;
          saveprefrenceisenglish();
          isenglish? await context.setLocale(Locale('en')):context.setLocale(Locale('ar'));
         }),
        buildlisttile(Icons.edit, LocaleKeys.changetheme.tr(), () {setState(() {

        }); }),
        buildlisttile(Icons.shop, LocaleKeys.thecart.tr(), () {Navigator.of(context).pushNamed(CartPage.id) ; }),
        buildlisttile(Icons.logout, 'Log out', () {Navigator.of(context).pushReplacementNamed(Login.id); })
      ],
    );
  }
}

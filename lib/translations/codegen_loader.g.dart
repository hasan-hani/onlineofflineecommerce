// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "admin": "مسؤول",
  "user": "مستخدم",
  "login": "تسجيل دخول",
  "register": "تسجيل",
  "Enteryourname": "ادخل اسمك",
  "enteryouemail": "ادخل ايميلك",
  "camera": "الة تصوير",
  "Menclothing": "رجالي",
  "jewelery": "مجوهرات",
  "setting": "ضبط",
  "changlanguage": "تغيير اللغة",
  "changetheme": "تغيير النمط",
  "thecart": "السلة",
  "Logout": "تسجيل خروج",
  "buy": "شراء",
  "price": "السعر",
  "count": "العدد",
  "delete": "حذف",
  "Additeme": "اضافة عنصر",
  "deleteiteme": "حذف عنصر",
  "edititem": "تعديل العناصر"
};
static const Map<String,dynamic> en = {
  "admin": "admin",
  "user": "user",
  "login": "login",
  "register": "Register",
  "Enteryourname": "Enter your name",
  "enteryouemail": "Enter your email",
  "camera": "Camera",
  "Menclothing": "men_clothing",
  "jewelery": "jewelery",
  "setting": "Setting",
  "changlanguage": "Change Language",
  "changetheme": "Change theme mode",
  "thecart": "The Cart",
  "Logout": "Log out",
  "buy": "buy",
  "price": "price",
  "count": "count",
  "delete": "Delete",
  "Additeme": "Add item",
  "deleteiteme": "Delete item",
  "edititem": "Edit item"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}

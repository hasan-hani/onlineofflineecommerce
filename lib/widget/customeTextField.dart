import 'package:flutter/material.dart';
class customTextFiled extends StatelessWidget {
  final String hint ;
  IconData icon ;
  String _erormassege(String str) {
    switch(hint){
      case 'Enter your Name' :return 'your name is empty';
      case 'Enter your Email' :return 'your Email is empty';
      case 'Enter your Password' :return 'your name is empty';
      case 'Product Name' :return 'enter name Product is empty';
      case 'Product Price' :return 'enter price of product ' ;
      case 'Product Description':return 'Enter the Description of product ' ;
      case 'Product Category':return 'Enter the product category' ;
      case 'Product Location':return 'Enter the product location' ;

    }
    return '';
  }
  // late TextEditingController cont ;

  customTextFiled({required this.hint,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        //controller: cont,
        obscureText: hint=='Enter your Password',
        validator:(value) {
          if(value!.isEmpty) {return _erormassege(hint) ;}

        } ,

        decoration: InputDecoration(
          hintText: hint,
          filled: true,prefixIcon: Icon(icon),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.white10
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.white10
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.white10
            ),
          ),
        ),

      ),
    );
  }
}
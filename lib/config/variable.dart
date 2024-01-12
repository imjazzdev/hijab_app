import 'package:flutter/material.dart';
import 'package:hijab_app/model/cart_item.dart';

class Variable {
  static MaterialColor primarySwatch = MaterialColor(0xFFF6A6EA, {
    50: Color(0xFFF6A6EA),
    100: Color(0xFFF6A6EA),
    200: Color(0xFFF6A6EA),
    300: Color(0xFFF6A6EA),
    400: Color(0xFFF6A6EA),
    500: Color(0xFFF6A6EA),
    600: Color(0xFFF6A6EA),
    700: Color(0xFFF6A6EA),
    800: Color(0xFFF6A6EA),
    900: Color(0xFFF6A6EA),
  });

  static Color primaryColor = Color.fromARGB(255, 255, 255, 255);
  static Color whiteColor = Color.fromARGB(255, 0, 0, 0);

  static List<CartItem> cartItems = [
    CartItem(name: 'Hijab Cantik', price: 50000),
    CartItem(name: 'Hijab Elegan', price: 40000),
  ];
}

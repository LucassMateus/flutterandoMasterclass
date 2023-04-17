import 'package:flutter/material.dart';
import 'package:inherited_notifier/shopping_cart_controller.dart';
import 'package:inherited_notifier/shopping_cart_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCartController(
        child: ShoppingCartPage(),
      ),
    );
  }
}

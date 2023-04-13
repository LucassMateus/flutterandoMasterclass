import 'package:flutter/material.dart';
import 'package:gerenciamento_estado/home_controller.dart';
import 'package:gerenciamento_estado/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: const HomePage(),
        ),
    );
  }
}
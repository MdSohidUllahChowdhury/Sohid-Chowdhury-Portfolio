import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohid_chowdhury_portfolio/View/Screen/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        useMaterial3: true,
      ),
      home:const HomeScreen() ,
      );  
  }
}
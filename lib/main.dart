import 'package:fluter_everning_wed/Login.dart';
import 'package:fluter_everning_wed/pages/api_page.dart';
import 'package:fluter_everning_wed/service/api_service.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ApiPage()
      // HomePage()
      // LogIn(),
      // HomePage(),
    );
  }


}


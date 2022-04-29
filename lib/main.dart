import 'package:flutter/material.dart';
import 'package:providerDemo/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
          theme: ThemeData.light(),
          home: const SafeArea(child: HomePage()),
    );
  }
}

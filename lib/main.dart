import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerDemo/home_page.dart';
import 'package:providerDemo/user_data_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) => UserDataProvider(),
      child: MaterialApp(
          theme: ThemeData.light(),
          home: const SafeArea(child: HomePage()),
      ),
    );
  }
}

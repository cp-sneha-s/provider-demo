import 'package:flutter/material.dart';
import 'package:providerDemo/user_list_screen.dart';




class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:const Text('Provider demo'),),
        body: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => UserListScreen()));
          },
          child: const Center(child:  Text('Get data',style: TextStyle(fontSize: 20),)),
        ));
  }
}




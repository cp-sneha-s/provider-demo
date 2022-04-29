import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerDemo/user.dart';
import 'package:providerDemo/user_data_provider.dart';

class UserListScreen extends StatelessWidget {
  UserListScreen({Key? key}) : super(key: key);
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider demo'),
        ),
        body: Consumer<UserDataProvider>(
          builder: (context, userDataProvider, child) {
            userList = userDataProvider.userList;
            return ListView.builder(
              itemCount: userList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                User user = userList[index];
                return Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ID: ${user.id}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Name: ${user.name}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Email: ${user.email}',
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ));
              },
            );
          },
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:http/http.dart'as http ;
import 'package:providerDemo/user.dart';

const String api= 'https://jsonplaceholder.typicode.com/users';

class UserApiService{

  Future<List<User>> getUserDataFromApi()async{
    http.Response response = await http.get(Uri.parse(api));
    if(response.statusCode == 200){
      List<dynamic> data= jsonDecode(response.body);
      List<User> userList = data.map((e) => User.fromJson(e)).toList();
      return userList;
    }else {
      throw Exception('Something went wrong');
    }
  }
}
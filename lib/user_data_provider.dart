import 'package:flutter/cupertino.dart';
import 'package:providerDemo/user.dart';
import 'package:providerDemo/user_api_service.dart';

class UserDataProvider extends ChangeNotifier{
  List<User> userList=[];
  final UserApiService _apiService = UserApiService();

  Future<void> getData()async{
    userList= await _apiService.getUserDataFromApi();
    notifyListeners();
  }

}
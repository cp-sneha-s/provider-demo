import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User{

  int id;
  @JsonKey(name: 'username')
  String name;
  String email;

  User({
    required this.id,
    required this.name,
    required this.email
});

  factory User.fromJson(Map<String,dynamic> map)=> _$UserFromJson(map);
}
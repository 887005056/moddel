
import 'package:flutter_application_1/data/madel/user_model.dart';
import 'package:flutter_application_1/screens/widgets/madel.dart';
import 'package:flutter_application_1/screens/widgets/madel_yozish.dart';

class UserName {
  final int id ;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  UserName({required this.id, required this.username, required this.email, required this.firstName,
   required this.lastName, required this.gender, required this.image, });

  factory UserName.fromJson(Map<String,dynamic>json)=>UserName
  (id:json['id'], username:json['username'], email:json ['email'],
   firstName:json ['firstName'], lastName:json['lastName'] ,gender:json
    ['gender'], image:json['image'],);

}

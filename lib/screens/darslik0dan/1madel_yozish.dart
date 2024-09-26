
class UserMoel{
  final int id ;
  final String username;
  final String email;
  final String firstName;
  final String lastNome;
  final String gender;
  final String image;
  final String token;
  final String refreshToken;

  UserMoel({required this.id, required this.username, required this.email,
  required this.firstName, required this.lastNome, required this.gender, 
  required this.image, required this.token, required this.refreshToken});
  factory UserMoel.fromJson(Map<String,dynamic>json)=>UserMoel(id:json['id'],
   username:json['username'], email:json['email'], firstName:json ['firstName'],
    lastNome:json ['lastNome'], gender:json['gender'], image:json ['image'],
     token: json['token'], refreshToken:json ['refreshToken']);





}

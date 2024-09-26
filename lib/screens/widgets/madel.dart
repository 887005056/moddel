class UserMoel{
  final int userld;
  final int id;
  final String title;
  final String body;

  UserMoel({required this.userld, required this.id, required this.title, required this.body});
factory UserMoel.fromJson(Map<String,dynamic>json)=> UserMoel(
  userld: json['userld'], id:json['id'], title:json['title'], body:json['body'],);

}
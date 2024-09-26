import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class ProductResponse {
  final bool success;
  final int status;
  final ProductItemModel data;

  ProductResponse({required this.success, required this.status, required this.data});
  factory ProductResponse.fromJson(Map<String,dynamic>json)=> _$ProductResponseFromJson(json);
}
@JsonSerializable()
class ProductDataModel {final List<ProductItemModel> items;

  ProductDataModel({required this.items});
  factory ProductDataModel.fromJson(Map<String,dynamic>json)=> _$ProductDataModelFromJson(json);
}
@JsonSerializable()
class ProductItemModel {
  final int id;
  final String slug;
  final String name;
  final String image;

  ProductItemModel({required this.id, required this.slug, required this.name, required this.image});
  factory ProductItemModel.fromJson(Map<String,dynamic>json)=> _$ProductItemModelFromJson(json);
}
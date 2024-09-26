// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      success: json['success'] as bool,
      status: (json['status'] as num).toInt(),
      data: ProductItemModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'data': instance.data,
    };

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) =>
    ProductDataModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDataModelToJson(ProductDataModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

ProductItemModel _$ProductItemModelFromJson(Map<String, dynamic> json) =>
    ProductItemModel(
      id: (json['id'] as num).toInt(),
      slug: json['slug'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ProductItemModelToJson(ProductItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'image': instance.image,
    };

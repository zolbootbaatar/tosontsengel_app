// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      content: json['content'] as String?,
      id: (json['id'] as num?)?.toInt(),
      images: json['images'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'images': instance.images,
      'content': instance.content,
    };

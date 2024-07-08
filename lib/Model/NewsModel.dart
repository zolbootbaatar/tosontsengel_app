import 'package:json_annotation/json_annotation.dart';

part 'NewsModel.g.dart';

@JsonSerializable()
class NewsModel {
  int? id;
  String? title, images, content;

  NewsModel({
    this.content,
    this.id,
    this.images,
    this.title,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

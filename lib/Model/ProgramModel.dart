import 'package:json_annotation/json_annotation.dart';

part 'ProgramModel.g.dart';

@JsonSerializable()
class ProgaramModel {
  int? id;
  String? date, time, subject;

  ProgaramModel({
    this.date,
    this.id,
    this.time,
    this.subject,
  });

  factory ProgaramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgaramModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProgaramModelToJson(this);
}

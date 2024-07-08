// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProgramModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgaramModel _$ProgaramModelFromJson(Map<String, dynamic> json) =>
    ProgaramModel(
      date: json['date'] as String?,
      id: (json['id'] as num?)?.toInt(),
      time: json['time'] as String?,
      subject: json['subject'] as String?,
    );

Map<String, dynamic> _$ProgaramModelToJson(ProgaramModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'subject': instance.subject,
    };

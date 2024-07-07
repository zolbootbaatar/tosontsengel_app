// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DonationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DonationModel _$DonationModelFromJson(Map<String, dynamic> json) =>
    DonationModel(
      subject: json['subject'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as String?,
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DonationModelToJson(DonationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'subject': instance.subject,
      'amount': instance.amount,
      'description': instance.description,
    };

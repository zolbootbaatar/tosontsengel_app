import 'package:json_annotation/json_annotation.dart';

part 'DonationModel.g.dart';

@JsonSerializable()
class DonationModel {
  int? id;
  String? type, subject, amount;
  String? description;

  DonationModel({
    this.subject,
    this.description,
    this.amount,
    this.id,
    this.type,
  });

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);

  Map<String, dynamic> toJson() => _$DonationModelToJson(this);
}

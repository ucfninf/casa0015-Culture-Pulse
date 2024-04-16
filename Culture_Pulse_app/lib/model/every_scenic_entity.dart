import 'package:culture_pulse_app/generated/json/base/json_field.dart';
import 'dart:convert';

import 'package:culture_pulse_app/generated/json/every_scenic_entity.g.dart';

@JsonSerializable()
class EveryScenicEntity {
  double? longitude;
  double? latitude;
  String? name;
  List<String>? photo;
  String? introduce;
  int? type;
  int? id;

  EveryScenicEntity({
    this.id,
    this.name,
    this.introduce,
    this.latitude,
    this.longitude,
    this.photo,
    this.type,
  });

  factory EveryScenicEntity.fromJson(Map<String, dynamic> json) =>
      $EveryScenicEntityFromJson(json);

  Map<String, dynamic> toJson() => $EveryScenicEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

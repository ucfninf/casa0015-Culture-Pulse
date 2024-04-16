import 'package:culture_pulse_app/generated/json/base/json_convert_content.dart';
import 'package:culture_pulse_app/model/every_scenic_entity.dart';

EveryScenicEntity $EveryScenicEntityFromJson(Map<String, dynamic> json) {
  final EveryScenicEntity everyScenicEntity = EveryScenicEntity();
  final double? longitude = jsonConvert.convert<double>(json['longitude']);
  if (longitude != null) {
    everyScenicEntity.longitude = longitude;
  }
  final double? latitude = jsonConvert.convert<double>(json['latitude']);
  if (latitude != null) {
    everyScenicEntity.latitude = latitude;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    everyScenicEntity.name = name;
  }
  final List<String>? photo = (json['photo'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (photo != null) {
    everyScenicEntity.photo = photo;
  }
  final String? introduce = jsonConvert.convert<String>(json['introduce']);
  if (introduce != null) {
    everyScenicEntity.introduce = introduce;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    everyScenicEntity.type = type;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    everyScenicEntity.id = id;
  }
  return everyScenicEntity;
}

Map<String, dynamic> $EveryScenicEntityToJson(EveryScenicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['longitude'] = entity.longitude;
  data['latitude'] = entity.latitude;
  data['name'] = entity.name;
  data['photo'] = entity.photo;
  data['introduce'] = entity.introduce;
  data['type'] = entity.type;
  data['id'] = entity.id;
  return data;
}

extension EveryScenicEntityExtension on EveryScenicEntity {
  EveryScenicEntity copyWith({
    double? longitude,
    double? latitude,
    String? name,
    List<String>? photo,
    String? introduce,
    int? type,
    int? id,
  }) {
    return EveryScenicEntity()
      ..longitude = longitude ?? this.longitude
      ..latitude = latitude ?? this.latitude
      ..name = name ?? this.name
      ..photo = photo ?? this.photo
      ..introduce = introduce ?? this.introduce
      ..type = type ?? this.type
      ..id = id ?? this.id;
  }
}
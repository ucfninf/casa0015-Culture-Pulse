import 'package:culture_pulse_app/generated/json/base/json_field.dart';
import 'package:culture_pulse_app/generated/json/weather_entity.g.dart';
import 'dart:convert';
export 'package:culture_pulse_app/generated/json/weather_entity.g.dart';

@JsonSerializable()
class WeatherEntity {
  int? errcode;
  String? errmsg;
  String? updateTime;
  String? updateTimeFormat;
  String? timeZone;
  String? city;
  String? country;
  String? latitude;
  String? longitude;
  WeatherDay? day;

  WeatherEntity();

  factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
      $WeatherEntityFromJson(json);

  Map<String, dynamic> toJson() => $WeatherEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDay {
  String? icon;
  String? feelsLike;
  String? temperature;
  String? temperatureMaxSince7am;
  String? phrase;
  @JSONField(name: "phrase_img")
  String? phraseImg;
  String? altimeter;
  String? barometerTrend;
  String? humidity;
  String? dewPoint;
  String? visibility;
  String? windSpeed;
  String? windDirCompass;
  String? windDirDegrees;
  String? uvIndex;
  String? uvDescription;
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonIcon;
  String? moonPhrase;
  String? narrative;
  WeatherDayAqi? aqi;

  WeatherDay();

  factory WeatherDay.fromJson(Map<String, dynamic> json) =>
      $WeatherDayFromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqi {
  @JSONField(name: "AIR")
  late WeatherDayAqiAIR aIR;
  @JSONField(name: "CO")
  late WeatherDayAqiCO cO;
  @JSONField(name: "NO2")
  late WeatherDayAqiNO2 nO2;
  @JSONField(name: "O3")
  late WeatherDayAqiO3 o3;
  @JSONField(name: "PM10")
  late WeatherDayAqiPM10 pM10;
  @JSONField(name: "PM2.5")
  late WeatherDayAqiPm25 pm25;
  @JSONField(name: "SO2")
  late WeatherDayAqiSO2 sO2;

  WeatherDayAqi();

  factory WeatherDayAqi.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiFromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiAIR {
  String? amount;
  String? index;
  String? pp;

  WeatherDayAqiAIR();

  factory WeatherDayAqiAIR.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiAIRFromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiAIRToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiCO {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiCO();

  factory WeatherDayAqiCO.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiCOFromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiCOToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiNO2 {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiNO2();

  factory WeatherDayAqiNO2.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiNO2FromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiNO2ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiO3 {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiO3();

  factory WeatherDayAqiO3.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiO3FromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiO3ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiPM10 {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiPM10();

  factory WeatherDayAqiPM10.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiPM10FromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiPM10ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiPm25 {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiPm25();

  factory WeatherDayAqiPm25.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiPm25FromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiPm25ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDayAqiSO2 {
  String? amount;
  String? index;
  String? category;

  WeatherDayAqiSO2();

  factory WeatherDayAqiSO2.fromJson(Map<String, dynamic> json) =>
      $WeatherDayAqiSO2FromJson(json);

  Map<String, dynamic> toJson() => $WeatherDayAqiSO2ToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'package:culture_pulse_app/generated/json/base/json_convert_content.dart';
import 'package:culture_pulse_app/model/weather_entity.dart';

WeatherEntity $WeatherEntityFromJson(Map<String, dynamic> json) {
  final WeatherEntity weatherEntity = WeatherEntity();
  final int? errcode = jsonConvert.convert<int>(json['errcode']);
  if (errcode != null) {
    weatherEntity.errcode = errcode;
  }
  final String? errmsg = jsonConvert.convert<String>(json['errmsg']);
  if (errmsg != null) {
    weatherEntity.errmsg = errmsg;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    weatherEntity.updateTime = updateTime;
  }
  final String? updateTimeFormat = jsonConvert.convert<String>(
      json['updateTimeFormat']);
  if (updateTimeFormat != null) {
    weatherEntity.updateTimeFormat = updateTimeFormat;
  }
  final String? timeZone = jsonConvert.convert<String>(json['timeZone']);
  if (timeZone != null) {
    weatherEntity.timeZone = timeZone;
  }
  final String? city = jsonConvert.convert<String>(json['city']);
  if (city != null) {
    weatherEntity.city = city;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    weatherEntity.country = country;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    weatherEntity.latitude = latitude;
  }
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    weatherEntity.longitude = longitude;
  }
  final WeatherDay? day = jsonConvert.convert<WeatherDay>(json['day']);
  if (day != null) {
    weatherEntity.day = day;
  }
  return weatherEntity;
}

Map<String, dynamic> $WeatherEntityToJson(WeatherEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['errcode'] = entity.errcode;
  data['errmsg'] = entity.errmsg;
  data['updateTime'] = entity.updateTime;
  data['updateTimeFormat'] = entity.updateTimeFormat;
  data['timeZone'] = entity.timeZone;
  data['city'] = entity.city;
  data['country'] = entity.country;
  data['latitude'] = entity.latitude;
  data['longitude'] = entity.longitude;
  data['day'] = entity.day?.toJson();
  return data;
}

extension WeatherEntityExtension on WeatherEntity {
  WeatherEntity copyWith({
    int? errcode,
    String? errmsg,
    String? updateTime,
    String? updateTimeFormat,
    String? timeZone,
    String? city,
    String? country,
    String? latitude,
    String? longitude,
    WeatherDay? day,
  }) {
    return WeatherEntity()
      ..errcode = errcode ?? this.errcode
      ..errmsg = errmsg ?? this.errmsg
      ..updateTime = updateTime ?? this.updateTime
      ..updateTimeFormat = updateTimeFormat ?? this.updateTimeFormat
      ..timeZone = timeZone ?? this.timeZone
      ..city = city ?? this.city
      ..country = country ?? this.country
      ..latitude = latitude ?? this.latitude
      ..longitude = longitude ?? this.longitude
      ..day = day ?? this.day;
  }
}

WeatherDay $WeatherDayFromJson(Map<String, dynamic> json) {
  final WeatherDay weatherDay = WeatherDay();
  final String? icon = jsonConvert.convert<String>(json['icon']);
  if (icon != null) {
    weatherDay.icon = icon;
  }
  final String? feelsLike = jsonConvert.convert<String>(json['feelsLike']);
  if (feelsLike != null) {
    weatherDay.feelsLike = feelsLike;
  }
  final String? temperature = jsonConvert.convert<String>(json['temperature']);
  if (temperature != null) {
    weatherDay.temperature = temperature;
  }
  final String? temperatureMaxSince7am = jsonConvert.convert<String>(
      json['temperatureMaxSince7am']);
  if (temperatureMaxSince7am != null) {
    weatherDay.temperatureMaxSince7am = temperatureMaxSince7am;
  }
  final String? phrase = jsonConvert.convert<String>(json['phrase']);
  if (phrase != null) {
    weatherDay.phrase = phrase;
  }
  final String? phraseImg = jsonConvert.convert<String>(json['phrase_img']);
  if (phraseImg != null) {
    weatherDay.phraseImg = phraseImg;
  }
  final String? altimeter = jsonConvert.convert<String>(json['altimeter']);
  if (altimeter != null) {
    weatherDay.altimeter = altimeter;
  }
  final String? barometerTrend = jsonConvert.convert<String>(
      json['barometerTrend']);
  if (barometerTrend != null) {
    weatherDay.barometerTrend = barometerTrend;
  }
  final String? humidity = jsonConvert.convert<String>(json['humidity']);
  if (humidity != null) {
    weatherDay.humidity = humidity;
  }
  final String? dewPoint = jsonConvert.convert<String>(json['dewPoint']);
  if (dewPoint != null) {
    weatherDay.dewPoint = dewPoint;
  }
  final String? visibility = jsonConvert.convert<String>(json['visibility']);
  if (visibility != null) {
    weatherDay.visibility = visibility;
  }
  final String? windSpeed = jsonConvert.convert<String>(json['windSpeed']);
  if (windSpeed != null) {
    weatherDay.windSpeed = windSpeed;
  }
  final String? windDirCompass = jsonConvert.convert<String>(
      json['windDirCompass']);
  if (windDirCompass != null) {
    weatherDay.windDirCompass = windDirCompass;
  }
  final String? windDirDegrees = jsonConvert.convert<String>(
      json['windDirDegrees']);
  if (windDirDegrees != null) {
    weatherDay.windDirDegrees = windDirDegrees;
  }
  final String? uvIndex = jsonConvert.convert<String>(json['uvIndex']);
  if (uvIndex != null) {
    weatherDay.uvIndex = uvIndex;
  }
  final String? uvDescription = jsonConvert.convert<String>(
      json['uvDescription']);
  if (uvDescription != null) {
    weatherDay.uvDescription = uvDescription;
  }
  final String? sunrise = jsonConvert.convert<String>(json['sunrise']);
  if (sunrise != null) {
    weatherDay.sunrise = sunrise;
  }
  final String? sunset = jsonConvert.convert<String>(json['sunset']);
  if (sunset != null) {
    weatherDay.sunset = sunset;
  }
  final String? moonrise = jsonConvert.convert<String>(json['moonrise']);
  if (moonrise != null) {
    weatherDay.moonrise = moonrise;
  }
  final String? moonset = jsonConvert.convert<String>(json['moonset']);
  if (moonset != null) {
    weatherDay.moonset = moonset;
  }
  final String? moonIcon = jsonConvert.convert<String>(json['moonIcon']);
  if (moonIcon != null) {
    weatherDay.moonIcon = moonIcon;
  }
  final String? moonPhrase = jsonConvert.convert<String>(json['moonPhrase']);
  if (moonPhrase != null) {
    weatherDay.moonPhrase = moonPhrase;
  }
  final String? narrative = jsonConvert.convert<String>(json['narrative']);
  if (narrative != null) {
    weatherDay.narrative = narrative;
  }
  final WeatherDayAqi? aqi = jsonConvert.convert<WeatherDayAqi>(json['aqi']);
  if (aqi != null) {
    weatherDay.aqi = aqi;
  }
  return weatherDay;
}

Map<String, dynamic> $WeatherDayToJson(WeatherDay entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['icon'] = entity.icon;
  data['feelsLike'] = entity.feelsLike;
  data['temperature'] = entity.temperature;
  data['temperatureMaxSince7am'] = entity.temperatureMaxSince7am;
  data['phrase'] = entity.phrase;
  data['phrase_img'] = entity.phraseImg;
  data['altimeter'] = entity.altimeter;
  data['barometerTrend'] = entity.barometerTrend;
  data['humidity'] = entity.humidity;
  data['dewPoint'] = entity.dewPoint;
  data['visibility'] = entity.visibility;
  data['windSpeed'] = entity.windSpeed;
  data['windDirCompass'] = entity.windDirCompass;
  data['windDirDegrees'] = entity.windDirDegrees;
  data['uvIndex'] = entity.uvIndex;
  data['uvDescription'] = entity.uvDescription;
  data['sunrise'] = entity.sunrise;
  data['sunset'] = entity.sunset;
  data['moonrise'] = entity.moonrise;
  data['moonset'] = entity.moonset;
  data['moonIcon'] = entity.moonIcon;
  data['moonPhrase'] = entity.moonPhrase;
  data['narrative'] = entity.narrative;
  data['aqi'] = entity.aqi?.toJson();
  return data;
}

extension WeatherDayExtension on WeatherDay {
  WeatherDay copyWith({
    String? icon,
    String? feelsLike,
    String? temperature,
    String? temperatureMaxSince7am,
    String? phrase,
    String? phraseImg,
    String? altimeter,
    String? barometerTrend,
    String? humidity,
    String? dewPoint,
    String? visibility,
    String? windSpeed,
    String? windDirCompass,
    String? windDirDegrees,
    String? uvIndex,
    String? uvDescription,
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonIcon,
    String? moonPhrase,
    String? narrative,
    WeatherDayAqi? aqi,
  }) {
    return WeatherDay()
      ..icon = icon ?? this.icon
      ..feelsLike = feelsLike ?? this.feelsLike
      ..temperature = temperature ?? this.temperature
      ..temperatureMaxSince7am = temperatureMaxSince7am ??
          this.temperatureMaxSince7am
      ..phrase = phrase ?? this.phrase
      ..phraseImg = phraseImg ?? this.phraseImg
      ..altimeter = altimeter ?? this.altimeter
      ..barometerTrend = barometerTrend ?? this.barometerTrend
      ..humidity = humidity ?? this.humidity
      ..dewPoint = dewPoint ?? this.dewPoint
      ..visibility = visibility ?? this.visibility
      ..windSpeed = windSpeed ?? this.windSpeed
      ..windDirCompass = windDirCompass ?? this.windDirCompass
      ..windDirDegrees = windDirDegrees ?? this.windDirDegrees
      ..uvIndex = uvIndex ?? this.uvIndex
      ..uvDescription = uvDescription ?? this.uvDescription
      ..sunrise = sunrise ?? this.sunrise
      ..sunset = sunset ?? this.sunset
      ..moonrise = moonrise ?? this.moonrise
      ..moonset = moonset ?? this.moonset
      ..moonIcon = moonIcon ?? this.moonIcon
      ..moonPhrase = moonPhrase ?? this.moonPhrase
      ..narrative = narrative ?? this.narrative
      ..aqi = aqi ?? this.aqi;
  }
}

WeatherDayAqi $WeatherDayAqiFromJson(Map<String, dynamic> json) {
  final WeatherDayAqi weatherDayAqi = WeatherDayAqi();
  final WeatherDayAqiAIR? aIR = jsonConvert.convert<WeatherDayAqiAIR>(
      json['AIR']);
  if (aIR != null) {
    weatherDayAqi.aIR = aIR;
  }
  final WeatherDayAqiCO? cO = jsonConvert.convert<WeatherDayAqiCO>(json['CO']);
  if (cO != null) {
    weatherDayAqi.cO = cO;
  }
  final WeatherDayAqiNO2? nO2 = jsonConvert.convert<WeatherDayAqiNO2>(
      json['NO2']);
  if (nO2 != null) {
    weatherDayAqi.nO2 = nO2;
  }
  final WeatherDayAqiO3? o3 = jsonConvert.convert<WeatherDayAqiO3>(json['O3']);
  if (o3 != null) {
    weatherDayAqi.o3 = o3;
  }
  final WeatherDayAqiPM10? pM10 = jsonConvert.convert<WeatherDayAqiPM10>(
      json['PM10']);
  if (pM10 != null) {
    weatherDayAqi.pM10 = pM10;
  }
  final WeatherDayAqiPm25? pm25 = jsonConvert.convert<WeatherDayAqiPm25>(
      json['PM2.5'] ??
          json.getOrNull<Map<String, dynamic>>('PM2')?.getOrNull<dynamic>('5'));
  if (pm25 != null) {
    weatherDayAqi.pm25 = pm25;
  }
  final WeatherDayAqiSO2? sO2 = jsonConvert.convert<WeatherDayAqiSO2>(
      json['SO2']);
  if (sO2 != null) {
    weatherDayAqi.sO2 = sO2;
  }
  return weatherDayAqi;
}

Map<String, dynamic> $WeatherDayAqiToJson(WeatherDayAqi entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['AIR'] = entity.aIR.toJson();
  data['CO'] = entity.cO.toJson();
  data['NO2'] = entity.nO2.toJson();
  data['O3'] = entity.o3.toJson();
  data['PM10'] = entity.pM10.toJson();
  data['PM2.5'] = entity.pm25.toJson();
  data['SO2'] = entity.sO2.toJson();
  return data;
}

extension WeatherDayAqiExtension on WeatherDayAqi {
  WeatherDayAqi copyWith({
    WeatherDayAqiAIR? aIR,
    WeatherDayAqiCO? cO,
    WeatherDayAqiNO2? nO2,
    WeatherDayAqiO3? o3,
    WeatherDayAqiPM10? pM10,
    WeatherDayAqiPm25? pm25,
    WeatherDayAqiSO2? sO2,
  }) {
    return WeatherDayAqi()
      ..aIR = aIR ?? this.aIR
      ..cO = cO ?? this.cO
      ..nO2 = nO2 ?? this.nO2
      ..o3 = o3 ?? this.o3
      ..pM10 = pM10 ?? this.pM10
      ..pm25 = pm25 ?? this.pm25
      ..sO2 = sO2 ?? this.sO2;
  }
}

WeatherDayAqiAIR $WeatherDayAqiAIRFromJson(Map<String, dynamic> json) {
  final WeatherDayAqiAIR weatherDayAqiAIR = WeatherDayAqiAIR();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiAIR.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiAIR.index = index;
  }
  final String? pp = jsonConvert.convert<String>(json['pp']);
  if (pp != null) {
    weatherDayAqiAIR.pp = pp;
  }
  return weatherDayAqiAIR;
}

Map<String, dynamic> $WeatherDayAqiAIRToJson(WeatherDayAqiAIR entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['pp'] = entity.pp;
  return data;
}

extension WeatherDayAqiAIRExtension on WeatherDayAqiAIR {
  WeatherDayAqiAIR copyWith({
    String? amount,
    String? index,
    String? pp,
  }) {
    return WeatherDayAqiAIR()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..pp = pp ?? this.pp;
  }
}

WeatherDayAqiCO $WeatherDayAqiCOFromJson(Map<String, dynamic> json) {
  final WeatherDayAqiCO weatherDayAqiCO = WeatherDayAqiCO();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiCO.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiCO.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiCO.category = category;
  }
  return weatherDayAqiCO;
}

Map<String, dynamic> $WeatherDayAqiCOToJson(WeatherDayAqiCO entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiCOExtension on WeatherDayAqiCO {
  WeatherDayAqiCO copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiCO()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}

WeatherDayAqiNO2 $WeatherDayAqiNO2FromJson(Map<String, dynamic> json) {
  final WeatherDayAqiNO2 weatherDayAqiNO2 = WeatherDayAqiNO2();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiNO2.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiNO2.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiNO2.category = category;
  }
  return weatherDayAqiNO2;
}

Map<String, dynamic> $WeatherDayAqiNO2ToJson(WeatherDayAqiNO2 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiNO2Extension on WeatherDayAqiNO2 {
  WeatherDayAqiNO2 copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiNO2()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}

WeatherDayAqiO3 $WeatherDayAqiO3FromJson(Map<String, dynamic> json) {
  final WeatherDayAqiO3 weatherDayAqiO3 = WeatherDayAqiO3();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiO3.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiO3.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiO3.category = category;
  }
  return weatherDayAqiO3;
}

Map<String, dynamic> $WeatherDayAqiO3ToJson(WeatherDayAqiO3 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiO3Extension on WeatherDayAqiO3 {
  WeatherDayAqiO3 copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiO3()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}

WeatherDayAqiPM10 $WeatherDayAqiPM10FromJson(Map<String, dynamic> json) {
  final WeatherDayAqiPM10 weatherDayAqiPM10 = WeatherDayAqiPM10();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiPM10.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiPM10.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiPM10.category = category;
  }
  return weatherDayAqiPM10;
}

Map<String, dynamic> $WeatherDayAqiPM10ToJson(WeatherDayAqiPM10 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiPM10Extension on WeatherDayAqiPM10 {
  WeatherDayAqiPM10 copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiPM10()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}

WeatherDayAqiPm25 $WeatherDayAqiPm25FromJson(Map<String, dynamic> json) {
  final WeatherDayAqiPm25 weatherDayAqiPm25 = WeatherDayAqiPm25();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiPm25.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiPm25.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiPm25.category = category;
  }
  return weatherDayAqiPm25;
}

Map<String, dynamic> $WeatherDayAqiPm25ToJson(WeatherDayAqiPm25 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiPm25Extension on WeatherDayAqiPm25 {
  WeatherDayAqiPm25 copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiPm25()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}

WeatherDayAqiSO2 $WeatherDayAqiSO2FromJson(Map<String, dynamic> json) {
  final WeatherDayAqiSO2 weatherDayAqiSO2 = WeatherDayAqiSO2();
  final String? amount = jsonConvert.convert<String>(json['amount']);
  if (amount != null) {
    weatherDayAqiSO2.amount = amount;
  }
  final String? index = jsonConvert.convert<String>(json['index']);
  if (index != null) {
    weatherDayAqiSO2.index = index;
  }
  final String? category = jsonConvert.convert<String>(json['category']);
  if (category != null) {
    weatherDayAqiSO2.category = category;
  }
  return weatherDayAqiSO2;
}

Map<String, dynamic> $WeatherDayAqiSO2ToJson(WeatherDayAqiSO2 entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['amount'] = entity.amount;
  data['index'] = entity.index;
  data['category'] = entity.category;
  return data;
}

extension WeatherDayAqiSO2Extension on WeatherDayAqiSO2 {
  WeatherDayAqiSO2 copyWith({
    String? amount,
    String? index,
    String? category,
  }) {
    return WeatherDayAqiSO2()
      ..amount = amount ?? this.amount
      ..index = index ?? this.index
      ..category = category ?? this.category;
  }
}
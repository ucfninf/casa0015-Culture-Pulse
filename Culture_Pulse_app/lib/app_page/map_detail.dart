// Culture Pulse Map Details

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/model/every_scenic_entity.dart';
import 'package:culture_pulse_app/model/weather_entity.dart';
import 'package:culture_pulse_app/app_page/navigation_page.dart';

import 'package:sp_util/sp_util.dart';
import 'package:http/http.dart' as http;

class MapDetailPage extends StatefulWidget {
  MapDetailPage({super.key, required this.scenicModel});

  EveryScenicEntity scenicModel;

  @override
  State<MapDetailPage> createState() => _MapDetailPageState();
}

class _MapDetailPageState extends State<MapDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getThisWeatherData(
          widget.scenicModel.latitude, widget.scenicModel.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value),
        centerTitle: true,
        title: const Text(
          'Scenic Detail',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                widget.scenicModel.name ?? '',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Card(
                child: Container(
                  width: MediaQuery.sizeOf(context).width - 20,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' Location City: $currentCityName'),
                      Text(' Location Temperature: $currentTemperature℃'),
                      Text(' Location Weather Condition: $currentNarrative'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ...List.generate(
                  widget.scenicModel.photo!.length,
                  (index) => Image.asset(
                        'assets/image/${widget.scenicModel.photo![index]}.png',
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.sizeOf(context).width - 20,
                      )),
              Text(widget.scenicModel.introduce ?? ''),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  collectOrUnCollect(!getThisScenicIsCollected());
                },
                icon: Icon(Icons.favorite,
                    color: getThisScenicIsCollected()
                        ? Colors.red
                        : Colors.grey[200])),
            SizedBox(
              width: 120,
              height: 32,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: Color(SpUtil.getInt(Cache.mainColorCache) ??
                        Cache.mainColor.value),
                  ),
                ),
                onPressed: () {
                  /// Navigate page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => NavigationPage(
                                destinationPosition: LatLng(
                                    widget.scenicModel.latitude!,
                                    widget.scenicModel.longitude!),
                              )));
                },
                child: Text(
                  'Navigate',
                  style: TextStyle(
                    color: Color(SpUtil.getInt(Cache.mainColorCache) ??
                        Cache.mainColor.value),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool getThisScenicIsCollected() {
    List<EveryScenicEntity> collectedList = [];
    if (SpUtil.getObjectList(Cache.myCollectionScenicList) != null &&
        SpUtil.getObjectList(Cache.myCollectionScenicList)!.isNotEmpty) {
      collectedList.addAll((SpUtil.getObjectList(Cache.myCollectionScenicList)
              as List<Map>)
          .map((e) => EveryScenicEntity.fromJson(e as Map<String, dynamic>)));
    }

    List<int> idList = [];
    if (collectedList.isNotEmpty) {
      for (var model in collectedList) {
        idList.add(model.id!);
      }
    }
    if (idList.contains(widget.scenicModel.id)) {
      return true;
    }
    return false;
  }

  void collectOrUnCollect(bool value) {
    List<EveryScenicEntity> collectedList = [];
    if (SpUtil.getObjectList(Cache.myCollectionScenicList) != null &&
        SpUtil.getObjectList(Cache.myCollectionScenicList)!.isNotEmpty) {
      collectedList.addAll((SpUtil.getObjectList(Cache.myCollectionScenicList)
              as List<Map>)
          .map((e) => EveryScenicEntity.fromJson(e as Map<String, dynamic>)));
    }
    if (value) {
      collectedList.add(widget.scenicModel);
      showToast('collect successfully');
    } else {
      collectedList
          .removeWhere((element) => element.id == widget.scenicModel.id);
      showToast('unCollect successfully');
    }
    SpUtil.putObjectList(Cache.myCollectionScenicList, collectedList);
    setState(() {});
  }

  String currentTemperature = '';
  String currentNarrative = '';
  String currentCityName = '';

  // retrieve of one of the coordinate of its current weather.
  Future<dynamic> getThisWeatherData(double? lat, double? long) async {
    Uri u = Uri.http('pitaya.tianqiapis.com', '/', {
      "appid": "test",
      "appsecret": "test888",
      "version": "today",
      "query": "$lat,$long",
      "language": "en",
      "unit": "m",
    });
    final response = await http.get(u);
    if (response.statusCode == 200) {
      WeatherEntity model = WeatherEntity.fromJson(json.decode(response.body));
      currentCityName = model.city ?? '';
      currentTemperature = model.day?.temperature ?? '';
      currentNarrative = model.day?.narrative ?? '';
      setState(() {});
    } else {
      throw Exception('Failed to fetch access token: ${response.reasonPhrase}');
    }
  }
}

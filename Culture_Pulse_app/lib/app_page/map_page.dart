import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';

//use StatefulWidget pattern to manage the state 
//of markers on the map and the user's current location.

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MapPage>
    with AutomaticKeepAliveClientMixin<MapPage> {
  LatLng? currentPosition;
  List<EveryScenicEntity> scenicList = [];

  @override
  void initState() {
    super.initState();
    scenicList = AllScenic.scenicList;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      /// Request permission first
      await _getCurrentLocation();
      setState(() {});
    });
  }

  // Get current location (here is to double check permissions)
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled.');
      return;
    }

// Get location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied (actual value: $permission).');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print(
          'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

 // Get current location
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      currentPosition = LatLng(position.latitude, position.longitude);
    });
  }

  BitmapDescriptor getIcon(int type) {
    switch (type) {
      /// Mine
      case -1:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue);

      /// Museum
      case 0:
        return BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange);

      /// Park
      case 1:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen);

      /// Historical Heritage site
      case 2:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
      case 3:
        return BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueMagenta);

      /// View Point
      case 4:
        return BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan);
      default:
        return BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueYellow);
    }
  }

  @SemanticsHintOverrides()
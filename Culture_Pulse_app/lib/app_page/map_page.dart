import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/custom_database/database.dart';
import 'package:culture_pulse_app/model/every_scenic_entity.dart';
import 'package:sp_util/sp_util.dart';

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

 @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor:
            Color(SpUtil.getInt(Cache.mainColorCache) ?? Cache.mainColor.value),
        centerTitle: true,
        title: const Text(
          'Map Page',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  /// The reason for adding restrictions and sliding here is that the
                  /// Google Map SDK will automatically redraw when the keyboard pops up.
                  /// Its markers and the image cache queue used for image processing will be destroyed during redrawing and making zoom unfunctional
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height - 170,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      /// Get current location
                      target: currentPosition ?? const LatLng(51.5074, -0.1278),
                      zoom: 10,
                    ),
                    myLocationButtonEnabled: true,
                    markers: {
                      ...List.generate(
                          scenicList.length,
                          (index) => Marker(
                                markerId: MarkerId(scenicList[index].id.toString()),
                                position: LatLng(scenicList[index].latitude!,
                                    scenicList[index].longitude!),
                                onTap: () {
                                  /// Jump to attraction details page
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => MapDetailPage(
                                                scenicModel: scenicList[index],
                                              )));
                                },
                                icon: getIcon(scenicList[index].type!),
                                infoWindow:
                                    InfoWindow(title: scenicList[index].name ?? ''),
                              )),
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 50,
                    width: 200,
                    child: TextField(
                      controller: TextEditingController(),
                      focusNode: null,
                      readOnly: true,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SearchScreen()));
                      },
                      decoration: const InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  // getSymbolStyle(Colors.blue,'My Location'),
                  getSymbolStyle(Colors.orange, 'Museum'),
                  getSymbolStyle(Colors.green, 'Park'),
                  getSymbolStyle(Colors.red, 'Historical Site'),
                  getSymbolStyle(Colors.cyan, 'Scenic spot'),
                ],
              )),
        ],
      ),
    );
  }

  Widget getSymbolStyle(Color symbolColor, String title) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: symbolColor,
          ),
          const Expanded(
            child: SizedBox(
              width: 10,
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

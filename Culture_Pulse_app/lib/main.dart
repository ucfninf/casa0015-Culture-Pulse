import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:culture_pulse_app/cache.dart';
import 'package:culture_pulse_app/app_page/splash_page.dart';
import 'package:sp_util/sp_util.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialized Splash Page
  await SpUtil.getInstance();
  if (SpUtil.getInt(Cache.mainColorCache) == 0) {
    SpUtil.putInt(Cache.mainColorCache, Cache.mainColor.value);
  }
  runApp(const MyApp());
}

/// Initializes map renderer to the `latest` renderer type for Android platform.
///
/// The renderer must be requested before creating GoogleMap instances,
/// as the renderer can be initialized only once per application context.

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const OKToast(
      backgroundColor: Colors.black54,
      textPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      radius: 20.0,
      child: MaterialApp(
        title: '',
        home: DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontSize: 14),
          child: Scaffold(
            body: SplashPage(),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      backgroundColor: Colors.black54,
      textPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      radius: 20.0,
      child: MaterialApp(
        title: '',
        home: DefaultTextStyle(
          style: const TextStyle(color: Colors.black, fontSize: 14),
          // child: Taber(),
          child: Scaffold(
            body: GoogleMap(
              initialCameraPosition: const CameraPosition(
                /// This should be modified to the longitude and latitude of the current location
                target: LatLng(-33.86, 151.20),
                zoom: 11.0,
              ),
              markers: {
                const Marker(
                  markerId: MarkerId('Sydney'),
                  position: LatLng(-33.86, 151.20),
                ),
              },
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:culture_pulse_app/tabber.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _seconds = 3;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      /// Obtain permissions when opening the app
      await _getCurrentLocation();

      /// Start countdown
      startTimer();
    });
  }

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
    
    // // Here is to get current location,will test on a real android phone to see if this works 
   
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0) {
          timer.cancel();

          /// Enter the tab page in five seconds
          _goTabber();
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

void _goTabber() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const Taber()));
  }

        @override
Widget build(BuildContext context) {
  return Material(
    child: Stack(
      children: [
        // background
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 221, 208), // background color
          ),
        ),
        // Logo image and Slogan
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo image
              Image.asset(
                'assets/image/culture_pulse no background.png', 
                width: 50,
                height: 50,
            
              ),
              SizedBox(height: 15), // spacing
              // Slogan
             const Text(
                'Pulse the culture from past, present, future',
                style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.bold, // bold
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 82, 56, 21), 
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 15), // 
        // secondary intro
             const Text(
              'This mobile app aims to help users discover and travel to local (UK) historical heritage by providing accurate information about local cultural events, traditions and practitioners. ',
            style: TextStyle(
            fontSize: 12, 
            color: Colors.grey,
                 ),
              textAlign: TextAlign.center,
             ),
            ],
          ),
        ),
      ] 
    ),
  );
}
}
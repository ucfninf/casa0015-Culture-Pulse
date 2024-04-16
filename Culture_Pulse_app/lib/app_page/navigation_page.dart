// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key, required this.destinationPosition});

  final LatLng destinationPosition;

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<NavigationPage> {
  GoogleMapController? mapController;
  LatLng? currentPosition;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCurrentLocation();
    });
  }

  void _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = LatLng(position.latitude, position.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Navigation'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: currentPosition ?? const LatLng(51.5074, -0.1278),
              zoom: 6,
            ),
            markers: {
              if (currentPosition != null)
                Marker(
                  markerId: const MarkerId('current_position'),
                  position: currentPosition!,
                  infoWindow: const InfoWindow(title: 'Current Position'),
                ),
              Marker(
                markerId: const MarkerId('destination_position'),
                position: widget.destinationPosition,
                infoWindow: const InfoWindow(title: 'Destination Position'),
              ),
            },
          ),
          Positioned(
            bottom: 30,
            left: 10,
            child: ElevatedButton(
              onPressed: () {
                _startNavigation();
              },
              child: const Text('Start Navigation'),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  void _startNavigation() async {
    if (currentPosition == null) {
      return;
    }

    String url =
        'https://www.google.com/maps/dir/?api=1&origin=${currentPosition!.latitude},${currentPosition!.longitude}&destination=${widget.destinationPosition.latitude},${widget.destinationPosition.longitude}&travelmode=driving';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}

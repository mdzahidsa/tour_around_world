import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LocationPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:GoogleMap(
        initialCameraPosition:CameraPosition(target:LatLng(53.33999864, -6.25499898),zoom: 15 ),
      mapType: MapType.terrain,
      ) 
    );
  }
}



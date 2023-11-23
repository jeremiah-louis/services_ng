import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
  double? latitude;
  double? longitude;

  // get current latitude $ longitude values
  void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
    // latitude = position.latitude;
    // longitude = position.longitude;
  }
}

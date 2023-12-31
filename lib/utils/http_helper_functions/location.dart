import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationHelper {
  static double? latitude;
  static double? longitude;
  static String? address = '';
  static String? state = '';

  // get current latitude & longitude values
  Future<void> getCurrentLocation() async {
    try {
      // Check for permission
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Handle permission denial gracefully (e.g., inform user, provide settings link)
        return;
      }

      try {
        // Get current position
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;

        // Get placemarks
        List<Placemark> placemarks =
            await placemarkFromCoordinates(latitude ?? 33.0, longitude ?? 43.0);
        Placemark place = placemarks[0];
        address = place.country;
        state = place.administrativeArea;
      } catch (e) {
        // Handle location retrieval errors (e.g., inform user, retry, use cached data)
        debugPrint('Error retrieving location details: $e');
      }
    } catch (e) {
      // Handle general errors (e.g., unexpected exceptions)
      debugPrint('Error during location process: $e');
    }
  }
}

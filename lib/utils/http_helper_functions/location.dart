import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationHelper {
  static double? latitude;
  static double? longitude;
  static String? address = '';
  static String? state = '';

  // get current latitude $ longitude values

  void getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      // print(position);
      latitude = position.latitude;
      longitude = position.longitude;
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude ?? 33.0, longitude ?? 43.0);
      Placemark place = placemarks[0];
      address = place.country;
      state = place.administrativeArea;
    } catch (e) {
      print(e);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:services_ng/utils/http_helper_functions/location.dart';
import 'package:services_ng/utils/theme/custom_theme/text_button_theme.dart';
import 'package:services_ng/utils/theme/custom_theme/text_theme.dart';
import 'package:services_ng/utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  LocationHelper locationHelper = LocationHelper();
  @override
  void initState() {
    locationHelper.getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ServicesAppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Get Location'),
        ),
      ),
    );
  }
}

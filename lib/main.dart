import 'package:flutter/material.dart';
import 'utils/http_helper_functions/location.dart';
import 'utils/theme/theme.dart';

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
    setState(() {
      locationHelper.getCurrentLocation();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ServicesAppTheme.lightTheme,
      home: Scaffold(
        body: Center(
          child: Text(
            '${locationHelper.state ?? 'Still loading'} State, ${locationHelper.address ?? 'Still loading'}.',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:services_ng/utils/theme/custom_theme/text_theme.dart';
import 'package:services_ng/utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ServicesAppTheme.lightTheme,
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: ServicesTextTheme.lightTextTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}

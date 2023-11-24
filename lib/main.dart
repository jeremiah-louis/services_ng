import 'package:flutter/material.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import 'features/onboarding/views/onboarding_screen.dart';
import 'utils/http_helper_functions/location.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ServicesAppTheme.lightTheme,
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: OnboardingScreen(),
        ),
      ),
    );
  }
}

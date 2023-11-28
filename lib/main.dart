import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/authentication/models/password_authentication.dart';
import 'package:services_ng/features/authentication/views/welcome_auth_screen.dart';
import 'package:services_ng/features/onboarding/models/onboarding_model.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/onboarding/views/onboarding_screen.dart';
import 'firebase_options.dart';
import 'utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Shared Prefrences Onboarding
  final pref = await SharedPreferences.getInstance();
  final showHome = pref.getBool('showHome') ?? false;

  // Flutter firebase core
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp(showHome: showHome));
}

class MainApp extends StatelessWidget {
  final bool showHome;
  const MainApp({
    super.key,
    required this.showHome,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ServicesAppTheme.lightTheme,
        home: showHome
            ? const WelcomeScreen()
            : const Scaffold(
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: OnboardingScreen(),
                ),
              ),
      ),
    );
  }
}

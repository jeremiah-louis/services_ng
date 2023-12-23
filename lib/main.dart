import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/authentication/models/authentication_repository.dart';
import 'package:services_ng/features/authentication/models/password_authentication.dart';
import 'package:services_ng/features/authentication/views/welcome_auth_screen.dart';
import 'package:services_ng/features/home/controllers/navigation_controller.dart';
import 'package:services_ng/features/onboarding/models/onboarding_model.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/onboarding/views/onboarding_screen.dart';
import 'firebase_options.dart';
import 'utils/theme/theme.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // Shared Prefrences Onboarding
  final pref = await SharedPreferences.getInstance();
  final showHome = pref.getBool('showHome') ?? false;

  // Flutter firebase core: this basically just allows us to check if user is logged in, out or awaits email verification
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => AuthenticationRepository());
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
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationRepository(),
        ),
        ChangeNotifierProvider(
          create: (context) => NavigationContoller(),
        ),
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

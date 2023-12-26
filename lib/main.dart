import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_ng/features/authentication/models/authentication_repository.dart';
import 'package:services_ng/features/authentication/models/password_authentication.dart';
import 'package:services_ng/features/authentication/views/welcome_auth_screen.dart';
import 'package:services_ng/features/home/controllers/carousel_controller.dart';
import 'package:services_ng/features/home/controllers/navigation_controller.dart';
import 'package:services_ng/features/onboarding/models/onboarding_model.dart';
import 'package:services_ng/utils/http_helper_functions/location.dart';
import 'package:services_ng/utils/size_config/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/home/controllers/sub_categories.dart';
import 'features/onboarding/views/onboarding_screen.dart';
import 'firebase_options.dart';
import 'utils/theme/theme.dart';

//Asynchronous main function, indicating it returns a Future
Future<void> main() async {
  // Ensure Flutter widgets are initialized before accessing them
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Shared Preferences for onboarding logic
  // Get an instance of SharedPreferences
  final pref = await SharedPreferences.getInstance();
  // Retrieve a boolean value indicating whether to show the home screen
  final showHome = pref.getBool('showHome') ?? false;

  // Initialize Firebase
  // Initialize Firebase app with platform-specific options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) =>
      AuthenticationRepository()); // Create an AuthenticationRepository instance upon completion

  // Location handling
  LocationHelper locationHelper = LocationHelper();
  // Fetch current location asynchronously
  await locationHelper.getCurrentLocation();

  // Run the app
  // Launch the MainApp widget, passing the showHome flag
  runApp(MainApp(showHome: showHome));
}

class MainApp extends StatelessWidget {
  // Flag indicating whether to show the home screen directly
  final bool showHome;
  const MainApp({
    super.key,
    required this.showHome,
  });

  @override
  Widget build(BuildContext context) {
    // Configure screen size-related calculations
    SizeConfig().init(context);

    // Provider setup for state management
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnboardingModel()),
        ChangeNotifierProvider(create: (context) => AuthenticationModel()),
        ChangeNotifierProvider(create: (context) => AuthenticationRepository()),
        ChangeNotifierProvider(create: (context) => NavigationController()),
        ChangeNotifierProvider(create: (context) => CarouselControllerSlider()),
        ChangeNotifierProvider(create: (context) => SubCategoriesList())
      ],
      // Core app structure
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ServicesAppTheme.lightTheme,
        home: showHome
            ? const WelcomeScreen() //Display WelcomeScreen if showHome is true
            : const Scaffold(
                // Show OnboardingScreen otherwise, within a basic scaffold
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: OnboardingScreen(),
                ),
              ),
      ),
    );
  }
}

// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAAxR123NFC9QZPlUl9gqBqXvdTQmckneg',
    appId: '1:1045354707941:web:901a7d8d55df27bca64d0c',
    messagingSenderId: '1045354707941',
    projectId: 'services-ng',
    authDomain: 'services-ng.firebaseapp.com',
    storageBucket: 'services-ng.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMVaV5sBfw_rGi4vbmO5JeQRi0DQjaow8',
    appId: '1:1045354707941:android:769224c98af39edea64d0c',
    messagingSenderId: '1045354707941',
    projectId: 'services-ng',
    storageBucket: 'services-ng.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-17kEYDaqLaJVujM01JD6IIgckE4ix90',
    appId: '1:1045354707941:ios:2c041a4c3e0fab46a64d0c',
    messagingSenderId: '1045354707941',
    projectId: 'services-ng',
    storageBucket: 'services-ng.appspot.com',
    androidClientId: '1045354707941-0e5jis03hlukcidpc02bash772jve0k9.apps.googleusercontent.com',
    iosClientId: '1045354707941-epaiuiqo5nbpivc6bhb15j85d67955g8.apps.googleusercontent.com',
    iosBundleId: 'com.example.servicesNg.RunnerTests',
  );
}

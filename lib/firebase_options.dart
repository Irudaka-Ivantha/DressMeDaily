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
        return macos;
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
    apiKey: 'AIzaSyC8kec2l-kaD2dp9HaXUzaxZ6FaeckqXCQ',
    appId: '1:62543235071:web:2e3cf8ffa7a0d3356989ca',
    messagingSenderId: '62543235071',
    projectId: 'dressmedaily-e8e0c',
    authDomain: 'dressmedaily-e8e0c.firebaseapp.com',
    storageBucket: 'dressmedaily-e8e0c.appspot.com',
    measurementId: 'G-46MBZJNSZN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrkPvAvBI-jGnsAOZ8Eg5Wi6oNWbfQE0E',
    appId: '1:62543235071:android:0f7857de1d1edf3b6989ca',
    messagingSenderId: '62543235071',
    projectId: 'dressmedaily-e8e0c',
    storageBucket: 'dressmedaily-e8e0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAmJ7AtpVa4GKVBByZaHSRnER2AimY81E',
    appId: '1:62543235071:ios:f20d13b39b37db3e6989ca',
    messagingSenderId: '62543235071',
    projectId: 'dressmedaily-e8e0c',
    storageBucket: 'dressmedaily-e8e0c.appspot.com',
    iosBundleId: 'com.sdgptest.flutterSdgp101',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAmJ7AtpVa4GKVBByZaHSRnER2AimY81E',
    appId: '1:62543235071:ios:96805c697b11434b6989ca',
    messagingSenderId: '62543235071',
    projectId: 'dressmedaily-e8e0c',
    storageBucket: 'dressmedaily-e8e0c.appspot.com',
    iosBundleId: 'com.example.firstly.RunnerTests',
  );
}

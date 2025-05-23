// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAkwW8eKLiqRrHeywhnZqu_nOOl42VZVY8',
    appId: '1:1001240832274:web:4f01f16828a9a6fb35ebcb',
    messagingSenderId: '1001240832274',
    projectId: 'elderlycareapp-35250',
    authDomain: 'elderlycareapp-35250.firebaseapp.com',
    storageBucket: 'elderlycareapp-35250.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsyXW3BZEW6qs1wzGCYUuhHO2UAn0KbTs',
    appId: '1:1001240832274:android:2e18d0abcac974dd35ebcb',
    messagingSenderId: '1001240832274',
    projectId: 'elderlycareapp-35250',
    storageBucket: 'elderlycareapp-35250.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEMyp1N2fqcQghNjvjk4wABO_Tr3vaYMI',
    appId: '1:1001240832274:ios:baaa3e0455214a6335ebcb',
    messagingSenderId: '1001240832274',
    projectId: 'elderlycareapp-35250',
    storageBucket: 'elderlycareapp-35250.firebasestorage.app',
    iosBundleId: 'com.example.elderlyCareApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAkwW8eKLiqRrHeywhnZqu_nOOl42VZVY8',
    appId: '1:1001240832274:web:d916d6a6dbc3d90b35ebcb',
    messagingSenderId: '1001240832274',
    projectId: 'elderlycareapp-35250',
    authDomain: 'elderlycareapp-35250.firebaseapp.com',
    storageBucket: 'elderlycareapp-35250.firebasestorage.app',
  );
}

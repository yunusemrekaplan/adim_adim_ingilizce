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
    apiKey: 'AIzaSyDtJDRkexVHdeFTXQKrCDBJNlU2kmBvEDo',
    appId: '1:384997495370:web:2f7d41cd90ad0b3f6a0cb3',
    messagingSenderId: '384997495370',
    projectId: 'learn-english-b39ac',
    authDomain: 'learn-english-b39ac.firebaseapp.com',
    storageBucket: 'learn-english-b39ac.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAj5JvAQ15ATLppLY7b6jYvbflwcMZc89w',
    appId: '1:384997495370:android:c2ce26c81baebb2d6a0cb3',
    messagingSenderId: '384997495370',
    projectId: 'learn-english-b39ac',
    storageBucket: 'learn-english-b39ac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzSfNXQoRu5YSttXyszjWI8MQTPsazC_4',
    appId: '1:384997495370:ios:c1cc85aa736d99d26a0cb3',
    messagingSenderId: '384997495370',
    projectId: 'learn-english-b39ac',
    storageBucket: 'learn-english-b39ac.appspot.com',
    iosBundleId: 'com.example.adimAdimTurkce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzSfNXQoRu5YSttXyszjWI8MQTPsazC_4',
    appId: '1:384997495370:ios:455642495dca4b5c6a0cb3',
    messagingSenderId: '384997495370',
    projectId: 'learn-english-b39ac',
    storageBucket: 'learn-english-b39ac.appspot.com',
    iosBundleId: 'com.example.adimAdimTurkce.RunnerTests',
  );
}
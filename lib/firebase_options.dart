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
    apiKey: 'AIzaSyCC6TvEKW954QBid-IeJnk1pNCrqxdDY34',
    appId: '1:733816559464:web:d9d45f5dcce40d7d6aa8dd',
    messagingSenderId: '733816559464',
    projectId: 'joud-mart',
    authDomain: 'joud-mart.firebaseapp.com',
    storageBucket: 'joud-mart.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3PXMkki9m22x5QSjexBfXcvvZCCaBHLQ',
    appId: '1:733816559464:android:70470b35f939b7466aa8dd',
    messagingSenderId: '733816559464',
    projectId: 'joud-mart',
    storageBucket: 'joud-mart.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAROYqjjXUB0zRCpR7LRPAvaUS5EU5vog4',
    appId: '1:733816559464:ios:0d0b6575a2f744d96aa8dd',
    messagingSenderId: '733816559464',
    projectId: 'joud-mart',
    storageBucket: 'joud-mart.appspot.com',
    iosBundleId: 'com.example.joudmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAROYqjjXUB0zRCpR7LRPAvaUS5EU5vog4',
    appId: '1:733816559464:ios:0d0b6575a2f744d96aa8dd',
    messagingSenderId: '733816559464',
    projectId: 'joud-mart',
    storageBucket: 'joud-mart.appspot.com',
    iosBundleId: 'com.example.joudmart',
  );
}

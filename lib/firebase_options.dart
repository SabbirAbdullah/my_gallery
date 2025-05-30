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
    apiKey: 'AIzaSyDjS5FbzRMCLajhWe7dc9WeBLUOWwOwa9Q',
    appId: '1:971537404382:web:73c23186c1b0cf68a7cd4f',
    messagingSenderId: '971537404382',
    projectId: 'personalgallery-eca54',
    authDomain: 'personalgallery-eca54.firebaseapp.com',
    storageBucket: 'personalgallery-eca54.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVF7XfP1qDQA0SJg5alGwnqwZ-ITDDYiE',
    appId: '1:971537404382:android:c18354e505d5703da7cd4f',
    messagingSenderId: '971537404382',
    projectId: 'personalgallery-eca54',
    storageBucket: 'personalgallery-eca54.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSz7_h2FPinn5AxE99fWyAXXE0uhrjGzc',
    appId: '1:971537404382:ios:af24212e45384218a7cd4f',
    messagingSenderId: '971537404382',
    projectId: 'personalgallery-eca54',
    storageBucket: 'personalgallery-eca54.appspot.com',
    iosBundleId: 'com.example.personalGallery',
  );
}

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
    apiKey: 'AIzaSyBjKM0xy1ytDA-YfmdfurlbWDLp9Ld9Mew',
    appId: '1:16459584829:web:78dbcd329075d49cfe2154',
    messagingSenderId: '16459584829',
    projectId: 'my-portfolio-41992',
    authDomain: 'my-portfolio-41992.firebaseapp.com',
    storageBucket: 'my-portfolio-41992.appspot.com',
    measurementId: 'G-VEFGCK639Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhOH3w00f4_Wd5SRmYoulaon8o28SWlIw',
    appId: '1:16459584829:android:94770585fc5b4e98fe2154',
    messagingSenderId: '16459584829',
    projectId: 'my-portfolio-41992',
    storageBucket: 'my-portfolio-41992.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZ3gfwp6ptlV0UGeIICZtNEp_On4Qg2go',
    appId: '1:16459584829:ios:cbe480bba4da584cfe2154',
    messagingSenderId: '16459584829',
    projectId: 'my-portfolio-41992',
    storageBucket: 'my-portfolio-41992.appspot.com',
    iosBundleId: 'com.example.jaydipbaraiya',
  );
}

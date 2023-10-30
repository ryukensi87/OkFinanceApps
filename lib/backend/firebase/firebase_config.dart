import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDTG_lIfSRRP0a8t7G9wKSQFoc9FEZA7tA",
            authDomain: "okfinanceapps.firebaseapp.com",
            projectId: "okfinanceapps",
            storageBucket: "okfinanceapps.appspot.com",
            messagingSenderId: "700795690513",
            appId: "1:700795690513:web:e853c03de11560d6ac1bb0",
            measurementId: "G-CD64KGZM63"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDg4WpStyU-S0XrlfMHSIUpPoqwdQq4jTM",
            authDomain: "physiodoktor.firebaseapp.com",
            projectId: "physiodoktor",
            storageBucket: "physiodoktor.appspot.com",
            messagingSenderId: "47605576785",
            appId: "1:47605576785:web:d1d6d3e65b3f74fefd7470"));
  } else {
    await Firebase.initializeApp();
  }
}

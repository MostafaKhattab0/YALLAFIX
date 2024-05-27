import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDqI71oo8Bisqxr-xA11lL6nYEvmVQ97K4",
            authDomain: "yallafix2024.firebaseapp.com",
            projectId: "yallafix2024",
            storageBucket: "yallafix2024.appspot.com",
            messagingSenderId: "196748135297",
            appId: "1:196748135297:web:85c376feca00aaec067680",
            measurementId: "G-4H42JQZ318"));
  } else {
    await Firebase.initializeApp();
  }
}

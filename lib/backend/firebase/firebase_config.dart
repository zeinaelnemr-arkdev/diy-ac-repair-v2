import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjgV99o58UupexDVce5mm0pz5QbRwzIqg",
            authDomain: "diy-ac-44e10.firebaseapp.com",
            projectId: "diy-ac-44e10",
            storageBucket: "diy-ac-44e10.firebasestorage.app",
            messagingSenderId: "395663915071",
            appId: "1:395663915071:web:1bcc0b09308e17c3f6608a",
            measurementId: "G-2LY633RJDS"));
  } else {
    await Firebase.initializeApp();
  }
}

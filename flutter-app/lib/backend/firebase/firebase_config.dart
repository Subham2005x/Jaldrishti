import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD12bvxPuTy8ok8tRr2NA5xohdqFR7s3k0",
            authDomain: "jaldrishti-b246b.firebaseapp.com",
            projectId: "jaldrishti-b246b",
            storageBucket: "jaldrishti-b246b.firebasestorage.app",
            messagingSenderId: "485403206529",
            appId: "1:485403206529:web:b50460c2bf82c804df3e80",
            measurementId: "G-CZJZM3KQYX"));
  } else {
    await Firebase.initializeApp();
  }
}

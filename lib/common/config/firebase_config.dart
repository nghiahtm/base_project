import 'package:firebase_core/firebase_core.dart';

class FirebaseConfig {
  Future<void> init() async {
    await Firebase.initializeApp();
  }
}

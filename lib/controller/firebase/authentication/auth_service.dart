import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../../model/student.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() {
    return _instance;
  }

  AuthService._internal();

  FirebaseAuth? _auth;
  final FirebaseApp _app = Firebase.app();

  Future<void> initialize() async {
    try {
      _auth = FirebaseAuth.instanceFor(app: _app);
    } on Exception catch (e) {
      print('AuthService.initialize: $e');
      // TODO
    }
  }

  //giriş yap fonksiyonu
  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    User? user;

    if (_auth == null) await initialize();

    try {
      final userCredential = await _auth!.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = userCredential.user;
    } catch (e) {
      print('AuthService.signIn: $e');
      /*
      Log(
        dateTime: DateTime.now(),
        state: 'Sign In Error',
        message: e.toString(),
      );
      */
    }

    user != null ? Student.student = Student(uid: user.uid) : null;

    return user;
  }
}

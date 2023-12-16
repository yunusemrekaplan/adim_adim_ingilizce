import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../model/student.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() {
    return _instance;
  }

  AuthService._internal();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    String? result;

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        Student.setStudentId(userCredential.user!.uid);
        keepUserLoggedIn(userCredential.user!.uid);
      }
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          result = 'The email address is badly formatted.';
          break;
        case 'user-disabled':
          result =
              'The user corresponding to the given email has been disabled.';
          break;
        case 'user-not-found':
          result = 'No user found for that email.';
          break;
        case 'wrong-password':
          result = 'Wrong password provided for that user.';
          break;
        default:
          result = 'Sign in failed.';
      }
    } catch (e) {
      result = e.toString();
    }

    return result;
  }

  Future<bool> isSignedIn() async {
    String? userId = await getLoggedInUser();

    if (userId != null) {
      Student.setStudentId(userId);
      return true;
    } else {
      return false;
    }
  }

  /*
  Future<void> signOut() async {
    await _auth.signOut();
  }
  */

  Future<String?> resetPassword({required String email}) async {
    String? result;

    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          result = 'The email address is badly formatted.';
          break;
        case 'user-not-found':
          result = 'No user found for that email.';
          break;
        default:
          result = 'Recover password failed.';
      }
    } catch (e) {
      result = e.toString();
    }
    return result;
  }

  Future<void> keepUserLoggedIn(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
  }

  Future<String?> getLoggedInUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');
    return userId;
  }

  Future<void> logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('userId');
  }
}

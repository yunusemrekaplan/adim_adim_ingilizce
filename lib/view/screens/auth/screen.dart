import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

import '../../../controller/firebase/authentication/auth_service.dart';
import 'constants.dart';
import 'controller.dart';

const mockUsers = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'near.huscarl@gmail.com': 'subscribe to pewdiepie',
  '@.com': '.',
};

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _controller = Get.put(Controller());
  final _authService = AuthService();

  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  Future<String?> _loginUser(LoginData data) async {
    return await _authService.signIn(
      email: data.name,
      password: data.password,
    );
  }

  Future<String?> _signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) async {
    return await _authService.resetPassword(email: name);
  }

  Future<String?> _signupConfirm(String error, LoginData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: _controller,
      initState: (_) async {
        if (await _authService.isSignedIn()) {
          Get.offNamed('/');
        } else {
          _controller.isLoading = true;
        }
      },
      builder: (_) => Obx(
        () => _controller.isLoading == false
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : FlutterLogin(
                title: Constants.appName,
                userValidator: (value) {
                  if (!value!.contains('@') || !value.endsWith('.com')) {
                    return "Email must contain '@' and end with '.com'";
                  }
                  return null;
                },
                passwordValidator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is empty';
                  }
                  return null;
                },
                onLogin: (loginData) {
                  //debugPrint('Login info');
                  //debugPrint('Name: ${loginData.name}');
                  //debugPrint('Password: ${loginData.password}');
                  return _loginUser(loginData);
                },
                onSignup: null,
                onSubmitAnimationCompleted: () {
                  Get.offNamed('/');
                },
                onRecoverPassword: (name) {
                  debugPrint('Recover password info');
                  debugPrint('Name: $name');
                  return _recoverPassword(name);
                  // Show new password dialog
                },
              ),
      ),
    );
  }
}

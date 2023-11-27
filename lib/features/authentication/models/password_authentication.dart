import 'package:flutter/widgets.dart';

class AuthenticationModel extends ChangeNotifier {
  //---------------------------Password Notifier----------------//
  bool isObscure = true;

  void toggleIsObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }

  //--------------------------
}

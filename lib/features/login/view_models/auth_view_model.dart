import 'package:flutter/widgets.dart';

class AuthViewModel with ChangeNotifier {
  // Within this section, you can integrate authentication methods
  // such as Firebase, SharedPreferences, and more.

  bool isLoggedIn = false;

  void signIn() {
    isLoggedIn = true;
    notifyListeners();
  }

  void signOut() {
    isLoggedIn = false;
    notifyListeners();
  }
}

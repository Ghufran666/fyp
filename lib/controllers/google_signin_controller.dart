// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
  // object
  final _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _googleSignInAccount;

  GoogleSignInAccount? get googleSignInAccount => _googleSignInAccount;

  set googleSignInAccount(GoogleSignInAccount? googleSignInAccount) {
    _googleSignInAccount = googleSignInAccount;
  }

  // function for login
  login() async {
    googleSignInAccount = await _googleSignIn.signIn();

    // call
    notifyListeners();
  }

  // function to logout
  logout() async {
    // empty the value after logut
    googleSignInAccount = await _googleSignIn.signOut();

    // call
    notifyListeners();
  }
}
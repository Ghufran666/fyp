import 'package:digital_ordering_system/model/user_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController with ChangeNotifier {
  //Object
  // ignore: prefer_final_fields
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetails? userDetails;

  //Function for google login
  googleLogin() async {
    // ignore: unnecessary_this
    this.googleSignInAccount = await _googleSignIn.signIn();

    //inserting values to our user details model
    //if not working using this for anyhow
    userDetails = UserDetails(
      displayName: googleSignInAccount!.displayName,
      email: googleSignInAccount!.email,
      photoURL: googleSignInAccount!.photoUrl,
    );

    // call
    notifyListeners();
  }

  //logout button
  logout() async {
    // ignore: unnecessary_this
    this.googleSignInAccount = await _googleSignIn.signOut();
    userDetails = null;
    notifyListeners();

  }
}

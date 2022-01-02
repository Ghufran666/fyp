// import 'package:digital_ordering_system/model/user_detail.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import '../utils/authentication.dart';

// class LoginController with ChangeNotifier {
//   // object
//   var _googleSignIn = GoogleSignIn();
//   GoogleSignInAccount? googleSignInAccount;
//   UserDetails? userDetails;


//    static Future<User?> signInWithGoogle({required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;

//     final GoogleSignIn googleSignIn = GoogleSignIn();

//     final GoogleSignInAccount? googleSignInAccount =
//         await googleSignIn.signIn();

//     if (googleSignInAccount != null) {
//       final GoogleSignInAuthentication googleSignInAuthentication =
//           await googleSignInAccount.authentication;

//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );



//       try {
//         final UserCredential userCredential =
//             await auth.signInWithCredential(credential);

//         user = userCredential.user;
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'account-exists-with-different-credential') {
//           // handle the error here
//         }
//         else if (e.code == 'invalid-credential') {
//           // handle the error here
//         }
//       } catch (e) {

//         // handle the error here
//       }
//       try {
//   final UserCredential userCredential =
//       await auth.signInWithCredential(credential);

//   user = userCredential.user;
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'account-exists-with-different-credential') {
//     ScaffoldMessenger.of(context).showSnackBar(
//       Authentication.customSnackBar(
//         content:
//             'The account already exists with a different credential',
//       ),
//     );
//   } else if (e.code == 'invalid-credential') {
//     ScaffoldMessenger.of(context).showSnackBar(
//       Authentication.customSnackBar(
//         content:
//             'Error occurred while accessing credentials. Try again.',
//       ),
//     );
//   }
// } catch (e) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     Authentication.customSnackBar(
//       content: 'Error occurred using Google Sign In. Try again.',
//     ),
//   );
// }
//     }

//     return user;
  
//   }
  
// }



//   //   return firebaseApp;
//   // }

//   // fucntion for google login
//   // googleLogin() async {
//   //   this.googleSignInAccount = await _googleSignIn.signIn();
//   //   // inserting values to our user details model

//   //   this.userDetails = new UserDetails(
//   //     displayName: this.googleSignInAccount!.displayName,
//   //     email: this.googleSignInAccount!.email,
//   //     photoURL: this.googleSignInAccount!.photoUrl,
//   //   );

//   //   // call
//   //   notifyListeners();
//   // }

//   // function for facebook login
// //   facebooklogin() async {
// //     var result = await FacebookAuth.i.login(
// //       permissions: ["public_profile", "email"],
// //     );

// //     // check the status of our login
// //     if (result.status == LoginStatus.success) {
// //       final requestData = await FacebookAuth.i.getUserData(
// //         fields: "email, name, picture",
// //       );

// //       this.userDetails = new UserDetails(
// //         displayName: requestData["name"],
// //         email: requestData["email"],
// //         photoURL: requestData["picture"]["data"]["url"] ?? " ",
// //       );
// //       notifyListeners();
// //     }
// //   }

// //   // logout

// //   logout() async {
// //     this.googleSignInAccount = await _googleSignIn.signOut();
// //     await FacebookAuth.i.logOut();
// //     userDetails = null;
// //     notifyListeners();
// //   }
// // }

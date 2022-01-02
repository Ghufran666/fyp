// // ignore_for_file: unnecessary_new, duplicate_ignore, unused_import

// import 'package:digital_ordering_system/utils/authentication.dart';
// import 'package:digital_ordering_system/controllers/login_controller.dart';
// import 'package:digital_ordering_system/screens/home_screen.dart';
// import 'package:digital_ordering_system/screens/registration_screen.dart';
// import 'package:digital_ordering_system/controllers/google_signin_controller.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// // ignore: duplicate_ignore
// class _LoginScreenState extends State<LoginScreen> {
//   //form key
//   final _formKey = GlobalKey<FormState>();
//   //editing controller
//   // ignore: unnecessary_new
//   final TextEditingController emailController = new TextEditingController();
//   final TextEditingController passwordController = new TextEditingController();
//   //firebase
//   final _auth = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     // email field
//     final emailField = TextFormField(
//         autofocus: false,
//         controller: emailController,
//         keyboardType: TextInputType.emailAddress,
//         validator: (value) {
//           // ignore: prefer_const_constructors
//           InputDecoration(hoverColor: Colors.pinkAccent);
//           if (value!.isEmpty) {
//             return ("Please Enter Your Email");
//           }
//           //reg expression for email validation
//           if (!RegExp("[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//               .hasMatch(value)) {
//             return ("Please enter a valid email");
//           }
//           return null;
//         },
//         onSaved: (value) {
//           emailController.text = value!;
//         },
//         textInputAction: TextInputAction.next,
//         decoration: InputDecoration(
//           prefixIcon: const Icon(Icons.mail),
//           contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Email",
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ));

//     // password field
//     final passwordField = TextFormField(
//         autofocus: false,
//         controller: passwordController,
//         obscureText: true,
//         validator: (value) {
//           RegExp regex = new RegExp(r'^.{6,}$');
//           if (value!.isEmpty) {
//             return ("Password is required for login! ");
//           }
//           if (!regex.hasMatch(value)) {
//             return ("Please enter valid password(Min. 6 Character");
//           }
//         },
//         onSaved: (value) {
//           passwordController.text = value!;
//         },
//         textInputAction: TextInputAction.done,
//         decoration: InputDecoration(
//           prefixIcon: const Icon(Icons.vpn_key),
//           contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Password",
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ));
//     final loginButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.pinkAccent,
//       child: MaterialButton(
//         padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//         onPressed: () {
//           signIn(emailController.text, passwordController.text);
//         },
//         child: const Text(
//           "Login",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//     // ignore: dead_code
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(36.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       SizedBox(
//                           height: 200,
//                           child: Image.asset(
//                             "assets/logo1.png",
//                             fit: BoxFit.contain,
//                           )),
//                       const SizedBox(height: 45),
//                       emailField,
//                       const SizedBox(height: 25),
//                       passwordField,
//                       const SizedBox(height: 35),
//                       loginButton,
//                       const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           const Text("Don't have an account?"),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           const RegistrationScreen()));
//                             },
//                             // ignore: prefer_const_constructors
//                             child: Text(
//                               " SignUp",
//                               style: const TextStyle(
//                                   color: Colors.pinkAccent,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15),
//                             ),
//                           )
//                         ],
//                       ),
//                       loginUI(),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           title: const Text("Digital Ordering System"),
//           backgroundColor: Colors.pinkAccent,
//           centerTitle: true,
//           // ),
//           // extendBodyBehindAppBar: loginUI(),
//           // drawer: Drawer(
//           //   child: Column(
//           //     children: const <Widget>[
//           //       DrawerHeader(child: Text("This is one")),
//           //     ],
//           //   ),
//           // ),
//         ));
//   }

//   //login function
//   void signIn(String email, String password) async {
//     if (_formKey.currentState!.validate()) {
//       await _auth
//           .signInWithEmailAndPassword(email: email, password: password)
//           .then((uid) => {
//                 Fluttertoast.showToast(msg: "Login Successful"),
//                 Navigator.of(context).pushReplacement(MaterialPageRoute(
//                     builder: (context) => const HomeScreen())),
//               })
//           .catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }

//   //creating a function login UI
//   loginUI() {
//     // loggedINUI
//     // loginControllers

//     return Consumer<LoginController>(builder: (context, model, child) {
//       // if we are already logged in
//       if (model.userDetails != null) {
//         return Center(
//           child: loggedInUI(model),
//         );
//       } else {
//         return loginControllers(context);
//       }
//     });
//   }

//   loggedInUI(LoginController model) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,

//       // our ui will have 3 children, name, email, photo , logout button

//       children: [
//         CircleAvatar(
//           backgroundImage:
//               Image.network(model.userDetails!.photoURL ?? "").image,
//           radius: 50,
//         ),

//         Text(model.userDetails!.displayName ?? ""),
//         Text(model.userDetails!.email ?? ""),

//         // logout
//         // ActionChip(
//         //     // avatar: Icon(Icons.logout),
//         //     // label: Text("Logout"),
//         //     // // onPressed: () {
//         //     // //   Provider.of<LoginController>(context, listen: false).logout();
//         //     // })
//       ],
//     );
//   }

//   loginControllers(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//               child: Image.asset(
//                 "assets/google.png",
//                 width: 240,
//               ),
//               onTap: () {
//                 Provider.of<LoginController>(context, listen: false);
//                    Authentication();
//               }),
//           SizedBox(
//             height: 10,
//           ),
//           GestureDetector(
//               child: Image.asset(
//                 "assets/fb.png",
//                 width: 240,
//               ),
//               // onTap: () {
//               //    Provider.of<LoginController>(context, listen: false)
//               //       .facebooklogin();
//               ),
//         ],
//       ),
//     );
//   }
// }
// ignore_for_file: unnecessary_new, duplicate_ignore, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

// _googleSignUp() async {
//     try {
//       final _googleSignIn = GoogleSignIn(
//         scopes: ['email'],
//       );
//       final FirebaseAuth _auth = FirebaseAuth.instance;

//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       final GoogleSignInAuthentication? googleAuth =
//           await googleUser?.authentication;

//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );

//       final User? user = (await _auth.signInWithCredential(credential)).user;
//       // print("signed in " + user.displayName);

//       return user;
//     } catch (e) {
//     }
//   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundimage2.jpg')),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 600,
                width: double.infinity,
                child: Column(
                  children: [
                    Text('Sign in continue'),
                    SizedBox(height: 50),
                    Text('Vegi',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.red,
                            shadows: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.green.shade900,
                                offset: Offset(3, 3),
                              )
                            ])),
                    SizedBox(height: 80),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign in with Google",
                      onPressed: () {
                      //  await _googleSignUp().then(
                      //       (value) => Navigator.of(context).pushReplacement(
                      //         MaterialPageRoute(
                      //           builder: (context) => (google_sign_in),
                      //         ),
                      //       ),
                      //     );
                      },
                    ),
                    SizedBox(height: 50),
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign in with Apple",
                      onPressed: () {},
                    ),
                    SizedBox(height: 150),
                    Text('By signing as you are agreeing to our terms',
                        style: TextStyle(color: Colors.white)),
                  ],
                )),
          ])),
    );
  }
}

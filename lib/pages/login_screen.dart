import 'package:chatapp_with_firebase/pages/chat_screens/chats_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../firebase_options.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () async {
              try {
                final _googleSignIn = GoogleSignIn();
                final googleAccount = await _googleSignIn.signIn();
                print(googleAccount!.email);
                final googleCredential = await googleAccount.authentication;
                final authCredential = GoogleAuthProvider.credential(
                    idToken: googleCredential.idToken,
                    accessToken: googleCredential.accessToken);
                final firebaseUser = await FirebaseAuth.instance
                    .signInWithCredential((authCredential));
                print(firebaseUser.user!.uid);
              } on PlatformException catch (e) {
                if (e.code == GoogleSignIn.kNetworkError) {
                  String errorMessage =
                      "A network error (such as timeout, interrupted connection or unreachable host) has occurred.";
                  print(errorMessage);
                } else {
                  String errorMessage = "Something went wrong.";
                  print(errorMessage);
                }
              }

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatsListScreen()));
            },
            color: Colors.red,
            child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
          ),
        ));
  }
}

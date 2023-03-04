import 'package:flutter/material.dart';

import '../ui/constants.dart';
import '../widgets/primary_button.dart';
import 'chat_screens/chats_screen.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  const SignInOrSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(children: [
          Spacer(
            flex: 2,
          ),
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? "assets/images/chat_logo.png"
                : "",
            height: 150,
          ),
          Spacer(),
          PrimaryButton(
            text: "Sign In",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChatsListScreen())),
          ),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          PrimaryButton(
            color: Theme.of(context).colorScheme.secondary,
            text: "Sign Up",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChatsListScreen())),
          ),
          Spacer(
            flex: 2,
          )
        ]),
      )),
    );
  }
}

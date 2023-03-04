import 'package:chatapp_with_firebase/pages/signin_or_signup.dart';
import 'package:flutter/material.dart';

import '../ui/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/welcome_image.jpeg"),
            Spacer(
              flex: 2,
            ),
            Text(
              "Welcome to our Chat \n messaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text("Chat talk any person of your \n mother language",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .color!
                        .withOpacity(0.64))),
            Spacer(flex: 2),
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignInOrSignUpScreen())),
                  child: Row(
                    children: [
                      Text(
                        "skip",
                        style: TextStyle(
                            color: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .color!
                                .withOpacity(0.64)),
                      ),
                      SizedBox(
                        width: kDefaultPadding / 4,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:chatapp_with_firebase/ui/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {super.key,
      required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.padding =
          const EdgeInsets.symmetric(horizontal: 50, vertical: 18.5)});
  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(text,
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}

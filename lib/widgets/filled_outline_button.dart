import 'package:flutter/material.dart';

class FilledOutLineButton extends StatelessWidget {
  const FilledOutLineButton(
      {super.key,
      required this.isFilled,
      required this.text,
      required this.press});
  final bool isFilled;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.white, width: 1)),
      onPressed: press,
      elevation: isFilled ? 5 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            color: isFilled ? Colors.blue : Colors.white, fontSize: 12),
      ),
    );
  }
}

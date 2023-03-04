import 'package:flutter/material.dart';

import '../models/chat_message.dart';

class MessageText extends StatelessWidget {
  MessageText({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          !(message.isSender)
              ? Text(
                  "Tareq kh",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : SizedBox(
                  height: 3,
                ),
          Text(
            message.text,
            style: TextStyle(
                color: message.isSender ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

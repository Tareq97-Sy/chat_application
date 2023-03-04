import 'package:chatapp_with_firebase/models/chat_message.dart';
import 'package:flutter/material.dart';

import 'message_image.dart';
import 'message_text.dart';

class Message extends StatelessWidget {
  Message({super.key, required this.message, required this.index});
  final ChatMessage message;
  final int index;
  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message, int index) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return MessageText(message: message);
        case ChatMessageType.image:
          return MessageImage(message: message, index: index);
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: message.isSender
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (!message.isSender) ...[
              CircleAvatar(
                child: Image.network("assets/images/user_5.png"),
                radius: 18,
              ),
              SizedBox(
                width: 10,
              ),
              messageContain(message, index),
            ]
          ],
        ),
      ),
    );
  }
}

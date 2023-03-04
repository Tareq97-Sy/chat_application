import 'package:chatapp_with_firebase/widgets/chat_card.dart';
import 'package:flutter/material.dart';

import '../models/chats.dart';
import '../widgets/filled_outline_button.dart';
import 'chat_screens/chat_message_screen.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({super.key});

  @override
  State<ChatsBody> createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Colors.green,
          child: Row(
            children: [
              FilledOutLineButton(
                  isFilled: true, text: "Recent Messages", press: () {}),
              SizedBox(
                width: 20,
              ),
              FilledOutLineButton(isFilled: false, text: "Active", press: () {})
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: listOfChats.length,
                itemBuilder: (context, index) => ChatCard(
                    chat: listOfChats[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ChatMessageScreen())));
                    })))
      ]),
    );
  }
}

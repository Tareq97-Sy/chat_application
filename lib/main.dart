import 'package:chatapp_with_firebase/pages/chat_screens/chats_screen.dart';
import 'package:chatapp_with_firebase/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/chatlist': (context) => ChatsListScreen(),
        '/login': (context) => LoginScreen(),
      },
    ));

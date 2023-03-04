import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }

enum MessageStauts { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStauts messageStauts;
  final bool isSender;
  final String? sender;
  final String? senderImage;
  final String? imageUrl;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStauts,
    required this.isSender,
    this.sender,
    this.senderImage,
    this.imageUrl,
  });
}

class ChatMessages with ChangeNotifier {
  List<ChatMessage> chatMessages = [
    ChatMessage(
        text: "Hi Tareq , How are you ?",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: true),
    ChatMessage(
        text: "Hi Mustafa",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: false),
    ChatMessage(
        text: "Hope you are doing well?",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: true),
    ChatMessage(
        text: "I am good",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: false),
    ChatMessage(
        text: "Happy to hear that",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: true),
    ChatMessage(
        text: "Thanks",
        messageType: ChatMessageType.text,
        messageStauts: MessageStauts.viewed,
        isSender: false),
  ];

  void addMessage(ChatMessage message) {
    chatMessages.add(message);
    notifyListeners();
  }

  List<ChatMessage> get getMessageList => chatMessages;
}

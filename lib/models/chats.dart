class Chat {
  final String name, lastMessage, time, image;
  final bool isActive;
  Chat({
    this.name = '',
    this.lastMessage = "",
    this.time = '',
    this.image = '',
    this.isActive = false,
  });
}

List listOfChats = [
  Chat(
      name: "Tareq",
      lastMessage: "How are you",
      time: "3m ago",
      image: "assets/images/user.png",
      isActive: true),
  Chat(
      name: "Salam",
      lastMessage: "hi my name is Salam",
      time: "3m ago",
      image: "assets/images/user_5.png",
      isActive: true),
  Chat(
      name: "Yaman",
      lastMessage: "I am Yaman",
      time: "4m ago",
      image: "assets/images/user_3.png",
      isActive: true),
  Chat(
      name: "Razan",
      lastMessage: "How are you",
      time: "10m ago",
      image: "assets/images/user.png",
      isActive: false),
  Chat(
      name: "Sana",
      lastMessage: "what are you doing",
      time: "3m ago",
      image: "assets/images/user_4.png",
      isActive: true),
];

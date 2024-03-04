import 'package:firebase_chat_package/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List roomList = [
    {
      "send": "Jay",
      "receiver": "Raj",
    },
    {
      "send": "Raj",
      "receiver": "Jay",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: ListView.builder(
          itemCount: roomList.length,
          itemBuilder: (_, i) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        receiverId: roomList[i]['receiver'],
                        senderId: roomList[i]['send'],
                        name: roomList[i]['receiver'],
                      ),
                    ));
              },
              title: Text(roomList[i]['receiver']),
            );
          }),
    );
  }
}

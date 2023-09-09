import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages;

  MessagesScreen({required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index]['message'];
        final isUserMessage = messages[index]['isUserMessage'];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isUserMessage ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              message.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

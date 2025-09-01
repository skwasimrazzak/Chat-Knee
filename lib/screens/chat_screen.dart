import 'package:chat_knee/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
            onPressed: () {
              //Log Out
            },
            icon: Icon(Icons.close),
          ),
        ],
        title: Row(
          children: [
            SizedBox(height: 40.0, child: Image.asset('images/logo.png')),
            Text(' Chat Knee'),
          ],
        ),
        backgroundColor: Color(0xff26667F),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Input Value Action
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Send user input
                    },
                    child: Text('Send', style: kTextButtonStyle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

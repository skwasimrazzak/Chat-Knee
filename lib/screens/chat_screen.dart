import 'package:chat_knee/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? messageText;
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  // getMessages() async {
  //   final messages = await _firestore.collection('messages').get();
  //   for (var texts in messages.docs) {
  //     print(texts.data());
  //   }
  // }
  getMessages() async {
    await for (var snapshots in _firestore.collection('messages').snapshots()) {
      for (var texts in snapshots.docs) {
        print(texts.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
            onPressed: () {
              getMessages();
              // _auth.signOut();
              // Navigator.pop(context);
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
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _firestore.collection('messages').add({
                        'text': messageText,
                        'sender': loggedInUser.email,
                      });
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

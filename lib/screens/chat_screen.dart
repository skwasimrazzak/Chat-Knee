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
  // getMessages() async {
  //   await for (var snapshots in _firestore.collection('messages').snapshots()) {
  //     for (var texts in snapshots.docs) {
  //       print(texts.data());
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
            onPressed: () {
              // getMessages();
              _auth.signOut();
              Navigator.pop(context);
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
            StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('messages').snapshots(),
              builder: (context, snapshot) {
                List<Widget> messageList = [];
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(color: Colors.blueGrey),
                  );
                }
                final messages = snapshot.data!.docs;
                for (var message in messages) {
                  final messageTextView = message['text'];
                  final senderNameView = message['sender'];
                  messageList.add(
                    Text('$messageTextView from $senderNameView'),
                  );
                }

                return Expanded(child: ListView(children: messageList));
              },
            ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        if (value != '') {
                          print('1');
                          messageText = value;
                        } else {
                          print('4');
                          messageText = null;
                        }
                      },
                      decoration: kMessageTextFieldDecoration,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (messageText != null) {
                        print('2');
                        print('n${messageText}n');
                        _firestore.collection('messages').add({
                          'text': messageText,
                          'sender': loggedInUser.email,
                        });
                        messageText = null;
                      }
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

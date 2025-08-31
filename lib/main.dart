import 'package:chat_knee/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatKnee());
}

class ChatKnee extends StatelessWidget {
  const ChatKnee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black45)),
      ),
    );
  }
}

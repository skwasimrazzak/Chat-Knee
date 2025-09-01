import 'package:chat_knee/screens/chat_screen.dart';
import 'package:chat_knee/screens/login_screen.dart';
import 'package:chat_knee/screens/signup_screen.dart';
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
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black45)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

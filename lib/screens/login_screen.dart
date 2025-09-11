import 'package:chat_knee/components/custom_buttons.dart';
import 'package:chat_knee/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(height: 48.0),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Action
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Action
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 24.0),
            CustomButtons(
              text: 'Log In',
              tag: 'login_button',
              color: Colors.lightBlueAccent,
              onPressed: () {
                //Action
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Screens/ChatScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/WelcomeScreen.dart';
import 'Screens/SignupScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}

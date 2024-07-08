import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chitchatttt/screens/welcome_screen.dart';
import 'package:chitchatttt/screens/login_screen.dart';
import 'package:chitchatttt/screens/registration_screen.dart';
import 'package:chitchatttt/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChitChatttt());
}

class ChitChatttt extends StatelessWidget {
  const ChitChatttt({super.key});

  @override
  Widget build(BuildContext context) {    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_classb/auth_system/login_screen.dart';
import 'package:flutter_classb/home_screen/home_screen.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool user = true;
  @override
  Widget build(BuildContext context) {
    return user ? HomeScreen() : LoginScreen();
  }
}

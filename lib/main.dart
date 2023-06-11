import 'package:flutter/material.dart';
import 'package:flutter_classb/auth_system/login_screen.dart';
import 'package:flutter_classb/general_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/splash': (context) => const SplashScreen()
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_classb/utills/drawer_util.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawe(),
      appBar: AppBar(
        title: Text(
          "Home Screen with flutter",
          style: GoogleFonts.lobster(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

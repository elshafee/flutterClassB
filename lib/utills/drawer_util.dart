import 'package:flutter/material.dart';
import 'package:flutter_classb/basic_widget_app/bottom_navigation.dart';
import 'package:flutter_classb/bmi_calculator/bmi_calculator.dart';
import 'package:flutter_classb/home_screen/home_screen.dart';
import 'package:flutter_classb/todolist_app/todolist_app.dart';
import 'package:transition/transition.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/person.jpg'),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
              ),
            ],
            accountName: Text("Ahmad Elshafee"),
            accountEmail: Text("example@gmail.com"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const HomeScreen(),
                      transitionEffect: TransitionEffect.TOP_TO_BOTTOM));
            },
            leading: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const BottomNNavigationExample(),
                      transitionEffect: TransitionEffect.TOP_TO_BOTTOM));
            },
            leading: const Icon(Icons.widgets),
            title: const Text("Basic widget app"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: BMICalculator(),
                      transitionEffect: TransitionEffect.TOP_TO_BOTTOM));
            },
            leading: const Icon(Icons.calculate),
            title: const Text("BMI Calculator"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const TodoListApp(),
                      transitionEffect: TransitionEffect.TOP_TO_BOTTOM));
            },
            leading: const Icon(Icons.calendar_today_outlined),
            title: const Text("TodoList App"),
          ),
        ],
      ),
    );
  }
}

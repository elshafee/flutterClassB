import 'package:flutter/material.dart';
import 'package:flutter_classb/basic_widget_app/flutter_toast_example.dart';
import 'package:flutter_classb/basic_widget_app/gridview_example.dart';
import 'package:flutter_classb/basic_widget_app/list_view.dart';
import 'package:flutter_classb/utills/drawer_util.dart';

class BottomNNavigationExample extends StatefulWidget {
  const BottomNNavigationExample({super.key});

  @override
  State<BottomNNavigationExample> createState() =>
      _BottomNNavigationExampleState();
}

class _BottomNNavigationExampleState extends State<BottomNNavigationExample> {
  List<Widget> widgetScreens = const [
    GridViewExample(),
    ListViewExample(),
    FlutterToastExample()
  ];
  int currentindex = 0;

  void onItemTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List<Widget> titles = [
    Text("GridView Example"),
    Text("ListView  Example"),
    Text("Flutter Toast Example"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titles[currentindex],
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      drawer: Drawe(),
      body: Center(
        child: widgetScreens[currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.deepPurple[50],
        currentIndex: currentindex,
        iconSize: 25,
        elevation: 5,
        type: BottomNavigationBarType.shifting,
        onTap: onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Flutter Toast',
          ),
        ],
      ),
    );
  }
}

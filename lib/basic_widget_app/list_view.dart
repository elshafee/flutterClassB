import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Abdelrahman"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Afrah"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.deepPurple[50],
            title: Text("Aya"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          const ListTile(
            title: Text("Chiraz"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Fedi"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Lamia"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Mohamed"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Salime"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Sarra"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Wael"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Rowan"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Abdelrahman"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Afrah"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            onTap: () {},
            splashColor: Colors.deepPurple[50],
            title: Text("Aya"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          const ListTile(
            title: Text("Chiraz"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Fedi"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Lamia"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Mohamed"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Salime"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Sarra"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Wael"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          ListTile(
            title: Text("Rowan"),
          ),
          Divider(
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> images = [
    "https://docs.flutter.dev/assets/images/dash/Dash.png",
    "https://lh3.googleusercontent.com/y1xqD3HBWkLdTf646GDJREHU5KfVzqzHCA3WDORTkGnNcvwdsloSPKVk_LB00xWq5Ur9kxHxteTiHE2fJQ8wklvt0UczmRwALoRV8sATIl8BeMSdw1s3sjcqHdUWBt9Gqj0e25evBOo=w500",
    "https://pbs.twimg.com/media/D2iE-7mU0AAJqxj.jpg",
    "https://pbs.twimg.com/media/Dtbmvj4WsAE6sq8?format=jpg&name=4096x4096"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple[100],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.network(images[index]),
                ),
              ),
            );
          }),
    );
  }
}

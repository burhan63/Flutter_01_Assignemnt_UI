import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Chess Board"),
        ),
        body: Center(
          child: Container(
            width: 482,
            height: 482,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Column(
              children: [
                buildRow(
                  Colors.black,
                  Colors.white,
                ), // First Row
                buildRow(Colors.white, Colors.black),
                buildRow(Colors.black, Colors.white),
                buildRow(Colors.white, Colors.black),
                buildRow(Colors.black, Colors.white),
                buildRow(Colors.white, Colors.black),
                buildRow(Colors.black, Colors.white),
                buildRow(Colors.white, Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow(Color firstColor, Color secondColor) {
    return Row(
      children: [
        customcontainer(60, 60, firstColor),
        customcontainer(60, 60, secondColor),
        customcontainer(60, 60, firstColor),
        customcontainer(60, 60, secondColor),
        customcontainer(60, 60, firstColor),
        customcontainer(60, 60, secondColor),
        customcontainer(60, 60, firstColor),
        customcontainer(60, 60, secondColor),
      ],
    );
  }
}

Widget customcontainer(double height, double width, Color color) {
  return Container(
    height: height,
    width: width,
    color: color,
  );
}

import 'package:flutter/material.dart';

void main() {
  runApp(TO_DO_APP());
}

class TO_DO_APP extends StatefulWidget {
  const TO_DO_APP({super.key});

  @override
  State<TO_DO_APP> createState() => _TO_DO_APPState();
}

class _TO_DO_APPState extends State<TO_DO_APP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Drawer(
            backgroundColor: Color.fromARGB(164, 221, 218, 209),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:to_do_app/screens/login_screen.dart';

class loading_screen extends StatefulWidget {
  const loading_screen({super.key});

  @override
  State<loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlutterLogo(
            size: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return login_screen();
                }));
              },
              child: Text('ENTER'))
        ],
      ),
    );
  }
}

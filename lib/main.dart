import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_task.dart';
import 'package:to_do_app/screens/loading_screen.dart';
import 'package:to_do_app/screens/sign_up_screen.dart';
import 'package:to_do_app/screens/task_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
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
        debugShowCheckedModeBanner: false, home: sign_up_screen());
  }
}

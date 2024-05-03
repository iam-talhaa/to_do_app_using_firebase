import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class sign_up_screen extends StatefulWidget {
  const sign_up_screen({super.key});

  @override
  State<sign_up_screen> createState() => _sign_up_screenState();
}

class _sign_up_screenState extends State<sign_up_screen> {
  var s_fullNameController = TextEditingController();
  var s_email_Controller = TextEditingController();
  var s_confirmPasswordController = TextEditingController();
  var s_passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP SCREEN'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN UP  ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_fullNameController,
              decoration: InputDecoration(
                  hintText: 'Full Name ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_email_Controller,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_passwordController,
              decoration: InputDecoration(
                  hintText: 'PASSWORD',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              controller: s_confirmPasswordController,
              decoration: InputDecoration(
                  hintText: ' CONFIRM PASSWORD',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                var fullname = s_fullNameController.text.trim();
                var email = s_email_Controller.text.trim();
                var pass = s_passwordController.text.trim();
                var confirmpass = s_confirmPasswordController.text.trim();

                FirebaseAuth auth = FirebaseAuth.instance;
                UserCredential userCredential =
                    await auth.createUserWithEmailAndPassword(
                        email: email, password: pass);
                if (userCredential != null) {
                  Fluttertoast.showToast(msg: 'SUCESS');
                } else {
                  Fluttertoast.showToast(msg: 'ERROR');
                }
              },
              child: Text('SIGN UP')),
        ],
      ),
    );
  }
}

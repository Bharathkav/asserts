import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../const.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _loginMail = TextEditingController();
  final TextEditingController _loginPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: _loginMail,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(entermail),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _loginPassword,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(enterpassword),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _loginMail.text,
                          password: _loginPassword.text);
                      Navigator.of(context).pushNamed('/');
                    } catch (error) {
                      return print('$error');
                    }
                  },
                  child: SizedBox(
                    
                    child: Text(
                      login,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Text(donthave),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                      child: Text(registerText),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

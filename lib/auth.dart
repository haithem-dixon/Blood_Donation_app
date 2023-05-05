import 'package:firebase_auth/firebase_auth.dart';
import'package:flutter/material.dart';
import 'package:hope/home.dart';
import 'package:hope/login.dart';


class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return const Homee();
          } else{
            return const Signin();
          }
        },

      ),
    );
  }
}
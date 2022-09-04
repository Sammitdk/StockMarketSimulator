import 'package:flutter/material.dart';
import 'package:stock_simulator_app/AnonymousUser/GuestWelcomePage.dart';
import 'package:stock_simulator_app/main.dart';

import 'firebase/firebase_auth.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          child: const Text("LogOut"),
          onPressed: () async {
          await Auth().signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MyApp()));
      }),
      appBar: AppBar(),
      body: const Center(
        child: Text("Fuck"),
      ),
    );
  }
}

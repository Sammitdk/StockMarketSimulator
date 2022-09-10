import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stock_simulator_app/main.dart';
import 'firebase/firebase_auth.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key,required this.info}) : super(key: key);
  Map<String, dynamic> info;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Auth auth = Auth();

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
      body: Center(child: Text(widget.info['Last']))
    );
  }
}

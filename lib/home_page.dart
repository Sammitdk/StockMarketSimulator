import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("${widget.info['Name']}" " " "${widget.info['Last']}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
                accountEmail: Text("${widget.info['Email']}",
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/images/account.png'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings), title: const Text ('Settings'),
              onTap: () {
                //not yet created
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts), title: const Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_sharp), title: const Text("Exit"),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_box_outlined), title: const Text("Log Out"),
                   onTap: () async {
                  await Auth().signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MyApp()));
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Stock Market Simulator'),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(onPressed: () {},
                icon: const Icon(Icons.search),
              ),
          ),
        ],
      ),
      body: Center(child: Text("${widget.info['Email']}")),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: 'Portfolio')
        ],
      ),
    );
  }
}

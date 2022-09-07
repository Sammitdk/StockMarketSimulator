import 'package:flutter/cupertino.dart';
import 'package:stock_simulator_app/home_page.dart';
import 'package:stock_simulator_app/main.dart';
import 'firebase/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final auth = Auth().auth;

    if (auth.currentUser == null) {
      return const MyApp();
    } else {
      return HomePage();
    }
  }
}
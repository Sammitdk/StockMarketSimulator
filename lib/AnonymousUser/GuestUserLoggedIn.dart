import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stock_simulator_app/login_page.dart';
import 'package:stock_simulator_app/signup_page.dart';

class GuestUser extends StatelessWidget {
  const GuestUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      drawer:Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
            accountName: const Text('Guest',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            accountEmail: const Text(''),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/images/account.png'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_box), title: const Text("Login"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_box_outlined), title: const Text("Create Account"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupPage()));
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
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stock_simulator_app/loggeduser/dataloading.dart';
import 'package:stock_simulator_app/password/password_recovery.dart';
import 'package:stock_simulator_app/loggeduser/home_page.dart';
import 'firebase/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final email = TextEditingController();
  final pass = TextEditingController();
  final Auth auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: (const Color(0xFF3456FF)),
        title: const Center(
          child: Text('Stock Market Simulator',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/login.gif",
            scale: 2,),
           Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                // hintText: 'Enter valid email !',
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: TextButton(onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const PasswordRecovery()));
            },
              child: const Text('Forgot Password',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF3456FF),
              ),),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(onPressed: () async {
              if(await auth.signIn(username: email.text, password: pass.text) != null) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DataLoading()));
              }else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Incorrect Email Address or Password'),));
              }
            },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF3456FF)),
                ),
                child:const Text('Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),))
          ),
          const SizedBox(
            height: 10,
            width: 50,
          )
        ],
      ),
    );
  }
}

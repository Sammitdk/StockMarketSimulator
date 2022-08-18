import 'package:flutter/material.dart';
import 'package:stock_simulator_app/PasswordRecovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
          child: Text('Stock Market Simulator',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username /email',
                // hintText: 'Enter valid email !',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                // hintText: 'Enter Password !',
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const PasswordRecovery()));
            },
              child: const Text('Forgot Password',
              style: TextStyle(
                fontSize: 15,
                color: Colors.orange,
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
            child: ElevatedButton(onPressed: () {
              //logged in
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const WelcomePage()));
            },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
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

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                // hintText: 'Enter full name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile number',

              ),
            ),
          ),const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',

              ),
            ),
          ),const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',

              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
                hintText: 'Enter password again',
              ),
            ),
          ),

          const SizedBox(
            height: 10,
            width: 50,
          ),
          SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: () {
                //logged in
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()));
              },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child:const Text('Sign up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),))
          ),

        ],
      ),
    );
  }
}

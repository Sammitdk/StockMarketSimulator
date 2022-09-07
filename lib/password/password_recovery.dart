import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (const Color(0xFF3456FF)),
        title: const Center(child: Text('Password Recovery')),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/forgetpassword.gif',
          scale: 2,
          ),

          const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                )
              ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mobile Number',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(onPressed: () {
              //verify n display appropriate message
            },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                backgroundColor: MaterialStateProperty.all(const Color(0xFF3456FF)),
              ),
              child: const Text('Verify',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';


class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              //controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Current Password',
                // hintText: 'Enter valid email !',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              //controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter New Password',
                // hintText: 'Enter valid email !',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: TextField(
              //controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter New Password',
                // hintText: 'Enter valid email !',
              ),
            ),
          ),
          SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(onPressed: () {
                //change password
              },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF2196F3)),
                  ),
                  child:const Text('Change Password',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),))
          ),
        ],
      ),
    );
  }
}

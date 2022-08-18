import 'package:flutter/material.dart';

class GuestWelcomePage extends StatelessWidget {
  const GuestWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
          child: Text('Welcome',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Stock',
              style: TextStyle(
                fontSize: 50,
                color: Colors.orange,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text('Market',
              style: TextStyle(
                fontSize: 50,
                color: Colors.orange,
                  fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text('Simulator',
              style: TextStyle(
                fontSize: 50,
                color: Colors.orange,
                  fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed: () {
                  //navigate to homepage for guest user
                },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                child: const Text('Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GuestWelcomePage extends StatelessWidget {
  const GuestWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (const Color(0xFF3456FF)),
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
              Image.asset('assets/images/logintobuy.gif',
                scale: 2.5,
              ),
              const Text('Buy and sell stocks easily !',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3456FF),
                    fontStyle: FontStyle.italic
                ),),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/securelogin.gif',
                scale: 2.5,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Secure transactions !',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3456FF),
                    fontStyle: FontStyle.italic
                ),),
              const SizedBox(
                height: 100,
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed: () {
                  //navigate to homepage for guest user
                },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF3456FF)),
                  ),
                child: const Text('Continue',
                    style: TextStyle(
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

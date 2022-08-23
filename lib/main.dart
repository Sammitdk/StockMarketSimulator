import 'package:flutter/material.dart';
import 'package:stock_simulator_app/GuestWelcomePage.dart';
import 'package:stock_simulator_app/login_page.dart';
import 'package:stock_simulator_app/signup_page.dart';

void main() => runApp(const MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/gif1.gif",
              scale: 2,),
              const SizedBox(
                height: 150,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.orange)
                    ),
                    child: const Text('Login',
                    style: TextStyle(
                      fontSize: 25,
                    ),)
                ),
              ),
              const SizedBox(height: 25,),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SignupPage()));
                },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size.fromRadius(18)),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.orange)
                    ),
                    child: const Text('Sign up',
                      style: TextStyle(
                        fontSize: 25,
                      ),)
                ),
              ),
              const SizedBox(height: 25,),
              SizedBox(
                height: 30,
                width: 200,
                child: TextButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const GuestWelcomePage()));
                },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                    child: const Text('Skip for now >>',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                      ),)
                ),
              ),
              const SizedBox(height: 70,),
            ],
          ),
        ],
      ),
    );
  }
}


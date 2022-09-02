import 'package:firebase_auth/firebase_auth.dart';

class Auth{

  final FirebaseAuth auth = FirebaseAuth.instance;


  User? _userFromCredUser(User? user) {
    return user;
  }


  Future signIn({required String username, required String password}) async
  {
    try
    {
      final UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: username, password: password);
      //we got user
      User? user = result.user;

      //we getting document for this user


      return _userFromCredUser(user);
    } catch (e)
    {
      return null;
    }
  }


}
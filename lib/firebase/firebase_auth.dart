import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth auth = FirebaseAuth.instance;

  User? _userFromCredUser(User? user) {
    return user;
  }

  Stream<User?> get user {
    return auth.authStateChanges().map(_userFromCredUser);
  }

//log in
  Future signIn({required String username, required String password}) async
  {
    try
    {
      final UserCredential result = await auth.signInWithEmailAndPassword(email: username, password: password);
      //we got user
      User? user = result.user;

      //we getting document for this user
      return _userFromCredUser(user);
    } catch (e)
    {
      return null;
    }
  }
  //sign out
  Future signOut() async
  {
    try
    {
       await auth.signOut();
    }
    catch(e)
    {
      print(e.toString());
    }
    return null;
  }

  //guest login
  // Future signInAnon() async {
  //   try {
  //     UserCredential result = await auth.signInAnonymously();
  //     User? user = result.user;
  //     return user;
  //   } catch (e) {
  //     return  null;
  //   }
  // }

}
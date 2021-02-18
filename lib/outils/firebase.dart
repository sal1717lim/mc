import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth A =FirebaseAuth.instance;

  connexionA() async{
    try{
      var X = await  A.signInAnonymously();
      return X;
    }catch(e){
      print(e);
      return null;
    }
  }


}
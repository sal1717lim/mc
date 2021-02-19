import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Auth {
  final FirebaseAuth A =FirebaseAuth.instance;
//conexion anonyme
  connexionA() async{
    try{

      AuthResult X = await  A.signInAnonymously();
      return X.user;
    }catch(e){
      print(e);
      return null;
    }
  }
//connexion email/mdp
  connexionEmailmdp(String email,String password) async{
    try{
      AuthResult x = await A.signInWithEmailAndPassword(email: email, password: password);
      return x.user;
    }catch(e){
      print(e);
      print("connexion impossible");
      return null;
    }
  }

  //inscription
  inscriptionemailmdp(String email,String password)async{
      try{
       return await A.createUserWithEmailAndPassword(email: email, password: password);
      }catch(e){
        print(e);
        return null;
      }
  }
}
class bdd{
  String uid;
  bdd({this.uid});
  CollectionReference A=Firestore.instance.collection("profile");

  update(String nom,String prenom) async{
    return await A.document(uid).setData(
        {
          'nom':nom,
          'prenom':prenom,
        });
      }

  }




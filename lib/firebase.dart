import 'package:firebase/new.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class firebase extends StatefulWidget {
  const firebase({Key? key}) : super(key: key);

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  Future<String?>login
  ({
  required String email,
    required String password,
})
  async{
    try{
      await
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return 'Success';
    }
    on FirebaseAuthException catch (e){
      if(e.code=='user-not-found') {
        return 'No user found for that email.';
      }
      else if (e.code== 'Wrong password')
        {
          return 'Wrong password provided for that user.';
      }
      else{
        return e.message;
      }
    }
    catch (e) {
      return e.toString();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:
    [
    TextField(
      controller: email,
    decoration: InputDecoration(
    filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
      hintText: 'email'
        ),
    ),
    SizedBox(
    height: 22,),
    TextField(
      obscureText: true,
      controller: password,
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    ),
      hintText: 'password'
    ),
    ),
    SizedBox(
    height: 22,),
    TextButton(
    style: TextButton.styleFrom(backgroundColor: Colors.grey),onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const newpg()),
      );
    },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.black, fontSize: 25),
        )
    ),
    ],
    ),
    );

  }
}

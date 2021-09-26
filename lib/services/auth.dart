

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthRules {
  final TextEditingController userEmail;
  final TextEditingController password;

    AuthRules({required this.userEmail,required this.password});
  createNewUser() async*{
    try {
              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email:userEmail.text,
              password: password.text,
            );
           print(userCredential.user!.uid);
            
            
            
            }  
            on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                  print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                  print('Wrong password provided for that user.');
                    }
                }
      }

    
    }
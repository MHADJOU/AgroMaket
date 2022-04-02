import 'package:flutter/material.dart';
import 'logo.dart';
import 'form.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
       // height: double.infinity,
       child: Column(
         children: [
           SizedBox(height: 120,), // figma height:63
           Logo(),
           SizedBox(height: 58,),
           Connexion(),
         ],
       ),
      )
    );
  }
}
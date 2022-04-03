import 'package:agro_maket/welcome.dart';
import 'package:flutter/material.dart';
import 'logo.dart';
import 'signIn/signIn.dart';
import 'signUp/signUp.dart';
import 'password/forget.dart';
import 'password/confirmEmail.dart';
void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/connexion': (context) => SignIn(),
    '/SignUp': (context) => CreateCount(),
    '/welcome' :(context) => Welcome(),
    '/forgetPass':(context) => forgetPass(),
    '/confirmEmail':(context) => ConfirmPass(),
  },
),
);
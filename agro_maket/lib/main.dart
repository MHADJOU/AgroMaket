import 'package:agro_maket/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'Screens/logo.dart';
import 'Components/signIn/signIn.dart';
import 'Components/signUp/signUp.dart';
import 'Components/password/forget.dart';
import 'Components/password/confirmEmail.dart';
import 'Screens/home.dart';
import 'Components/articles/fruitsArticle.dart';

void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/connexion': (context) => SignIn(),
    '/SignUp': (context) => const CreateCount(),
    '/welcome' :(context) => Welcome(),
    '/forgetPass':(context) => forgetPass(),
    '/confirmEmail':(context) => const ConfirmPass(),
    '/home' : (context) => const Home(),
    '/fruits' :(context) => const fruitsArticles(),

  },
),
);
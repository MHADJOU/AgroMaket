import 'package:agro_maket/Screens/createdAccount.dart';
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
  initialRoute: '/cretedAccount',
  routes: {
    //'/':(context) => const Loading(),
    '/connexion': (context) => const SignIn(),
    '/welcome' :(context) => Welcome(),
    '/SignUp': (context) => const CreateCount(),
    '/cretedAccount':(context) => created_Account(),
    '/forgetPass':(context) => forgetPass(),
    '/confirmEmail':(context) => const ConfirmPass(),
    '/home' : (context) => const Home(),
    '/fruits' :(context) => const fruitsArticles(),

  },
),
);
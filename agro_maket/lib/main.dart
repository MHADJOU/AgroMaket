import 'package:flutter/material.dart';
import 'logo.dart';
import 'signIn/signIn.dart';
void main() =>  runApp(MaterialApp(
  initialRoute: '/connexion',
  routes: {
    '/':(context) => Loading(),
    '/connexion':(context) => SignIn(),
  },
),
);
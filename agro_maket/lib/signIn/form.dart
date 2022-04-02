//import 'dart:js_util';

import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({ Key? key }) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  final Textstyle = TextStyle(
                color: Color.fromARGB(255, 54, 2, 43),
                fontFamily:'RedRose',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.normal,
                letterSpacing: 1,
              );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(38, 0, 0, 0),
      child: Column(
        children: [
          // Text "Sign In"
          Container(
            width: double.infinity,
            child: Text(
              'Sign In',
              textAlign: TextAlign.left,
              style: Textstyle,
              ),
          ),
          SizedBox(height: 10,),   // figma height: 27
          form(),
        ],
      ),
    );
  }
}


// Form
class form extends StatefulWidget {
  const form({ Key? key }) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
        width: 282,
        height: 45,
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        child: TextFormField(
        
          decoration: InputDecoration(
            
            icon: Image(
              width: 31,
              height: 31,
              image: AssetImage('assets/icons/user.png')
              ),
            
            hintText: 'username',
            hintStyle: TextStyle(
              fontFamily: 'Sarala',
              fontSize: 18,
              fontStyle: FontStyle.normal,
              
            ),
            border: InputBorder.none,
        ),
    ),
      )
    );
  }
}
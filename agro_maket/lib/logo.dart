import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        //add  logo image
        child: Image(
          width: 156.31,
          height: 137.21,
          image: AssetImage("assets/logo.png"),
        ),
      ),
      
    );
  }
}
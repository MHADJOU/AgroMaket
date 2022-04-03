import 'package:flutter/material.dart';
import '../signIn/logo.dart';
import 'Fourmula.dart';

class CreateCount extends StatefulWidget {
  const CreateCount({ Key? key }) : super(key: key);

  @override
  State<CreateCount> createState() => _CreateCountState();
}

class _CreateCountState extends State<CreateCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 80,),
          Logo(),
          formCount(),
        ],
      ),
    );
  }
}
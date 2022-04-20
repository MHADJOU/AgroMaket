import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        width: 156, //figma width=95
        height: 137,// figma height:95
        image: AssetImage('assets/logo.png'),
      ),
    );
  }
}
import 'package:agro_maket/signIn/logo.dart';
import 'package:flutter/material.dart';

class ConfirmPass extends StatefulWidget {
  const ConfirmPass({ Key? key }) : super(key: key);

  @override
  State<ConfirmPass> createState() => _ConfirmPassState();
}

class _ConfirmPassState extends State<ConfirmPass> {

      final StyleText  = TextStyle(
                  fontFamily: 'RedRose',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 10, 54, 2),
                  height: 1.8,
                );

    String  email = "abdoulhamid@iut-dhaka.edu";
     //final textStyle = Text("$email",style: TextStyle(fontWeight: FontWeight.bold),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 140,),
          Logo(),

          SizedBox(height: 62,),

          //Text
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                "A message is sent  to this email\n$email to\nreset your password.",
                style: StyleText,
              ),
            ),
          ),

          SizedBox(height: 43,),

               //Button Validator
               Container(
                      margin: EdgeInsets.fromLTRB(36, 0, 40, 0),
                      padding: EdgeInsets.only(top: 3),
                      width: 282,
                      height: 45,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 19, 89, 2),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: InkWell(
                        //focusColor: Color.fromARGB(255, 19, 89, 2),
                        onTap: (){
                          Navigator.pushNamed(context, "/connexion");
                        },
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:  Colors.white,
                            fontFamily: 'Sarala',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                          ),
                      ),
          ),
          ),
             ],
           ),
    );
  }
}
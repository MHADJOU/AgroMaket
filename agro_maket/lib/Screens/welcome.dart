import 'package:agro_maket/Components/signIn/logo.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {

      final style =  TextStyle(
                      fontFamily: 'RedRose',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 10, 54, 2),
                      height: 1.8,
                     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          children: [
            SizedBox(height: 161,),

            //tItle
            Container(
              width: double.infinity,
              child: Text(
                "WELCOME",
                style: TextStyle(
                  fontFamily: 'RedRose',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1,
                  color: Color.fromARGB(255, 19, 89, 2)
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 114,),

            //Text
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  "AgroMaket is there to  satisfy\nyour requests.\nYou order your food in ine click\nand  you receiveit  as soon as \npossible",
                  style: style,
                  ),
              ),
            ),

            SizedBox(height: 47,),

            //Button next
            Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 40, 0),
                      width: 282,
                      height: 45,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 19, 89, 2),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: InkWell(
                        //focusColor: Color.fromARGB(255, 19, 89, 2),
                        onTap: (){
                          //if taped go Sign In page
                          Navigator.pushNamed(context, "/connexion");
                        },
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:  Colors.white,
                            fontFamily: 'Sarala',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                          ),
                      ),
          ),
          ),
          ],
        ),
      ),
    );
  }
}
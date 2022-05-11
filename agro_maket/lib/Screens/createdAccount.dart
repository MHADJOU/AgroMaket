import 'package:flutter/material.dart';
import 'package:agro_maket/Components/signIn/logo.dart';
class created_Account extends StatefulWidget {
  const created_Account({ Key? key }) : super(key: key);

  @override
  State<created_Account> createState() => _created_AccountState();
}

class _created_AccountState extends State<created_Account> {

  
      final StyleText  = const TextStyle(
                  fontFamily: 'RedRose',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 10, 54, 2),
                  height: 1.8,
                );
       final StyleText1  = const TextStyle(
                  fontFamily: 'RedRose',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 10, 54, 2),
                  height: 1.8,
                );
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
            child: Center(
              child: Column(
                children: [
                  Text('Congratulation !!!', 
                  style: StyleText1,
                  ), 
                  SizedBox(height: 1.0,),
                  Text('Your account is created successifly.', style: StyleText,)
                ],
              )
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
                        child: const Text(
                          'connexion',
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
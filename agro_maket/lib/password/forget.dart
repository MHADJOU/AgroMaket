import 'package:agro_maket/signIn/logo.dart';
import 'package:flutter/material.dart';

class forgetPass extends StatefulWidget {
  //const forgetPass({ Key? key }) : super(key: key);
  @override
  State<forgetPass> createState() => _forgetPassState();
}

class _forgetPassState extends State<forgetPass> {

    final StyleText  = TextStyle(
                  fontFamily: 'RedRose',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 10, 54, 2),
                  height: 1.8,
                );
    
    final FormTextField = TextFormField(
                   autocorrect: true,
                   decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                 );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Logo(),

          SizedBox(height: 62,),

          //Text
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                "Please enter your email.\nA message will be send in your\nemail.So please check before\ncontinuing",
                style: StyleText,
              ),
            ),
          ),

          SizedBox(height: 43,),

          //Inpout  Email
         Form(
           child: Column(
             children: [
               Container(
                 width: 282,
                 height: 45,
                 padding: EdgeInsets.only(left: 10, top: 18),
                 decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                 child: FormTextField,
               ),

               SizedBox(height: 23,),

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
                          Navigator.pushNamed(context, "/confirmEmail");
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
         )
        ],
      ),
    );
  }
}
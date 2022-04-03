import 'package:flutter/material.dart';
import 'logo.dart';
import 'form.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
       // height: double.infinity,
       child: Column(
         children: [
           SizedBox(height: 120,), // figma height:63
           Logo(),
           SizedBox(height: 58,),
           Connexion(),
           SizedBox(height: 27,),
           forgetPassword(),
           SizedBox(height: 40,),
           SignUp(),
         ],
       ),
      )
    );
  }
}

class forgetPassword extends StatelessWidget {
  const forgetPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
         // Navigator.pushNamed(context, "/");
         Navigator.pushNamed(context, "/forgetPass");
        },
        child: Text(
          'forget password',
          style: TextStyle(
            fontFamily: 'Sarala',
            fontSize: 12,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.8,
            color: Color.fromARGB(255, 10, 54, 2)
          ),
        ),
      ),
    );
  }
}

//SignUp

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      //padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
      padding: EdgeInsets.only(left: 70),

      child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't you have an account ?",
                style: TextStyle(
                fontFamily: 'Sarala',
                fontSize: 14,
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 10, 54, 2)
              ),
              ),
              SizedBox(width: 6,),
              InkWell(
                onTap: (){
                  //if text taped go to Sign  Up page
                  Navigator.pushNamed(context, "/SignUp");
                },
                child: Text(
                  'Sign Up',
                   style: TextStyle(
                    fontFamily: 'RedRose',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 19,89, 2)
            ),
                  ),
              )
            ],
        ),
      ),
    );
  }
}
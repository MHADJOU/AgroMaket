import 'package:flutter/material.dart';

class formCount extends StatefulWidget {
  const formCount({ Key? key }) : super(key: key);

  @override
  State<formCount> createState() => _formCountState();
}

class _formCountState extends State<formCount> {
  @override
  Widget build(BuildContext context) {
    return  Form(
        child: Column(
          children: [
            SizedBox(height: 27,),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(  
                    fontFamily: 'RedRose',
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1,
                    color: Color.fromARGB(255, 10, 50, 2)
                  ),
                  ),
              )
              ),
              SizedBox(height: 27,),

              // Full name champ
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 282,
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),


                    //Email
                       Container(
                      margin: EdgeInsets.all(0),
                      width: 282,
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    //phone
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 282,
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    //Password
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 282,
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: 'Passorwd',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    //confirm password
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 282,
                      height: 45,
                      padding: EdgeInsets.only(left: 10, top: 18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm passeword',
                          hintStyle: TextStyle(
                            fontFamily: 'Sarala',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                  // Button create an account
                    Container(
                      margin: EdgeInsets.fromLTRB(36, 0, 40, 0),
                      width: 282,
                      height: 45,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 19, 89, 2),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: InkWell(
                        //focusColor: Color.fromARGB(255, 19, 89, 2),
                        onTap: (){},
                        child: Text(
                          'Create',
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

          SizedBox(height: 30,),
          
        // Text ; I have an account
          Padding(
            padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
            child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "I have account !",
                  style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 10, 54, 2)
                ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    //is  text taped go to SignIn page
                    Navigator.pushNamed(context, "/connexion");
                  },
                  child: Text(
                    'Sign In',
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
          ),
                  ],
                ),
              )
          ],
        ),
    );
  }
}
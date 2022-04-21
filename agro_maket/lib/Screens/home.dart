import 'package:flutter/material.dart';
import 'package:agro_maket/Components/articles/boxArticles.dart';
import 'package:agro_maket/Components/articles/homeArticles.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.white,
        //title: Text('je suis'),
        leading: InkWell(
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Image(
              height: 26.0,
              width: 26.0,
              image: AssetImage('assets/icons/hamburger.png'),
              ),
          ),
            onTap: (){},
        ),
        // Action button (bag  button)
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Image(
                height: 26.0,
                width: 26.0,
                image: AssetImage('assets/icons/bag.png'),
              ),
            ),
            onTap: (){
              print('clicked');
            },
          )
        ],
      ),
      body: homeArticle(),//const homeArticle(),

      //Bottom navigator bar
      bottomNavigationBar: BottomNavigationBar(
        
        items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Image(
                    height: 26.0,
                    width: 26.0,
                    image: AssetImage('assets/icons/notification.png'),
                  ),
              ),
                label: "",
              ),
               BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 35.0),
                child: Image(
                    height: 26.0,
                    width: 33.0,
                    image: AssetImage('assets/icons/bag.png'),
                  ),
              ),
                label: "",
              ),
               BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Image(
                    height: 26.0,
                    width: 26.0,
                    image: AssetImage('assets/icons/home.png'),
                  ),
              ),
                label: "",
              ),
               BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Image(
                    height: 26.0,
                    width: 26.0,
                    image: AssetImage('assets/icons/search.png'),
                  ),
              ),
                label: "",
              ),
               BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Image(
                    height: 26.0,
                    width: 26.0,
                    image: AssetImage('assets/icons/person.png'),
                  ),
              ),
                label: '',
              ),
        ]
        ),
    );
  }
}
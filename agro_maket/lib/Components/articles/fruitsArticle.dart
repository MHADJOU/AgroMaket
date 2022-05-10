import 'package:flutter/material.dart';
import 'boxArticles.dart';

class fruitsArticles extends StatefulWidget {
  const fruitsArticles({ Key? key }) : super(key: key);

  @override
  State<fruitsArticles> createState() => _fruitsArticlesState();
}

class _fruitsArticlesState extends State<fruitsArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 10, 54, 2),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Fruits',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'RedRose',
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 10, 54, 2),
          ),
          ),
      ),

      //containt 
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisExtent: 263,
                                        mainAxisSpacing: 5.0

                                       ),
                                  itemCount: 15,
                                  itemBuilder: (BuildContext context, int index){
                                    return Article(index);
                                  }
                                  ),
            ),
          )
        ],
      ),
    );
  }
}
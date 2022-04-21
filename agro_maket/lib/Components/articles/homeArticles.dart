import 'package:flutter/material.dart';
import 'boxArticles.dart';

class homeArticle extends StatefulWidget {
  const homeArticle({ Key? key }) : super(key: key);

  @override
  State<homeArticle> createState() => _homeArticleState();
}

class _homeArticleState extends State<homeArticle> {
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        
        SliverList(delegate: SliverChildListDelegate(
          
          [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Row(
                  children: [
                   Text(
                      'Fruits',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.end,
                      ),
                      Text(
                      'Vegetables',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),

                  ],
                  
                ),
              ),
            ),
            Text(
                    'Proteins',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
          ]
          )),
        
             SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.only(right: 35.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 263 ,
                  mainAxisSpacing: 5.0,
                ),
          
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            return Article();
          }
          ),
      ),
      )
       ],
    );
      }
  }

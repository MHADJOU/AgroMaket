import 'dart:ffi';
import 'dart:ui';
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
   final  List<String> categoriesName = ['Vegetables', 'Fuits', 'Proteins', 'seeds'];
   const  styleCategoriesName = TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'RedRose',
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromARGB(255, 10, 54, 1),
                                  shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 4.0),
                                        blurRadius: 8.0,
                                        color: Color.fromARGB(130, 1, 4, 0),
                                      )
                                  ]
                                );
                                
    return  CustomScrollView(
      slivers: [
        
        SliverList(delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 35.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              child: Text(categoriesName[0], style: styleCategoriesName,),
                              onTap: (){},
                              )
                          ),
                          Expanded(
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(categoriesName[1], style: styleCategoriesName,),
                              ),
                              onTap: (){},
                              )
                          ),
                          InkWell(
                            child: Text(
                              categoriesName[2], style: styleCategoriesName,),
                            onTap: (){},
                            ),
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),
            const SizedBox(height: 15.0,),
            Center(
              child: InkWell(child: Text(categoriesName[3], style: styleCategoriesName,),
                      onTap: (){},
              ),
            ),
           const  SizedBox(height: 20.0,)
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
                  
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index){
                    return Article(index);
              }
          ),
      ),
      )
       ],
    );
      }
  }

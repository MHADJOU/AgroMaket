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
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(20, (index){
        return Article();
      }),
      ); 
  }
}
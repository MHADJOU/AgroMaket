import 'package:flutter/material.dart';
import 'classes.dart';

class Article extends StatefulWidget {
 // Article({ Key? key,required this.index }) : super(key: key)
    int index = 0;
  Article (this.index);
  //Article._();
  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  
   final List<Food> _food = [
                  Food(image: 'assets/apple.png',name: 'Apple', price: 10.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/apricots.png',name: 'Apricots', price: 3.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/bananas.png',name: 'Bananas', price: 6.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/beans.png',name: 'Beans', price: 9.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/cucumbers.png',name: 'Cucumbers', price: 2.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/green-beans.png',name: 'Green Beans', price: 1.5, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/juicy-oranges.png',name: 'Oranges', price: 3.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/leek.png',name: 'leek', price: 2.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/oranges.png',name: 'Oranges', price: 1.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/papayas.png',name: 'Papayas', price: 2.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/salad.png',name: 'Salad', price: 1.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/stockvault-green-grapes.png',name: 'Stockvault Grapes', price: 4.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/stockvault-tuna.png',name: 'Stockvault Tuna', price: 4.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/tomatoes.png',name: 'Tomatos', price: 3.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
                  Food(image: 'assets/watermelons.png',name: 'Watermelons', price: 1.0, unity: '\$', kilos: '/kg', description: 'Lorem Ipsum is simply dummy text'),
   ];

  final stylePrice = const TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'RedRose',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 19, 89, 2),

                       );

  final styleTitle = const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'RedRose',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                      color: Color.fromARGB(255, 10, 54, 2),
                    );

  final styleDescription = const TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Sarala',
                            fontStyle: FontStyle.normal,
                            );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 6.0),
      child: Container(
        width: 140.0,
        height: 243.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          children: [
            Container(
              width: 118.0,
              height: 110.0,
              //color: Colors.white,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
              ),
              child: Image(
                image: AssetImage(_food[widget.index].image),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: Text(
               '${_food[widget.index].unity}${_food[widget.index].price} ${_food[widget.index].kilos}',
                style: stylePrice,
              ),
            ),
            const SizedBox(height: 4.0,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                _food[widget.index].name,
                style: styleTitle,
              ),
            ),
            const SizedBox(height: 8.0,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                _food[widget.index].description,
                style: styleDescription,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              alignment: Alignment.centerRight,
              child: InkWell(
                child: const Image(
                  width: 22.92,
                  height: 22.92,
                  image: AssetImage('assets/icons/add.png'),
                ),
                onTap: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';


class Article extends StatelessWidget {
  //const Article({ Key? key }) : super(key: key);
   double price = 300.0;
   String unity = "\$";
   String title = "Apple";
   String kilo = "/Kg";
   String description = "Lorem Ipsum is simply dummy text ";

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
      padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 6.0),
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
              child: const Image(
                image: AssetImage('assets/apple.png'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                '$unity$price $kilo',
                style: stylePrice,
              ),
            ),
            const SizedBox(height: 4.0,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: styleTitle,
              ),
            ),
            const SizedBox(height: 8.0,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                description,
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
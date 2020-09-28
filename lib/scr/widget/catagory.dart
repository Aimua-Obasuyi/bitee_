import 'package:bitee_/scr/widget/title.dart';
import 'package:flutter/material.dart';
import '../commons.dart';
import 'package:bitee_/scr/models/catagory.dart';

List<Catagory> catagoriesList = [

    Catagory(
    name: 'Breakfast',
    image: 'eat.jfif',
  ),

  Catagory(
    name: 'Entrees',
    image: 'eat.jfif',
  ),
  Catagory(
    name: 'Meat',
    image: 'eat.jfif',
  ),
  Catagory(
    name: 'Soups and Stew',
    image: 'eat.jfif',
  ),
  Catagory(
    name: 'Swallow',
    image: 'eat.jfif',
  ),
  Catagory(
    name: 'Side Dishes',
    image: 'eat.jfif',
  ),

  Catagory(
    name: 'Snacks',
    image: 'eat.jfif',
  ),
  Catagory(
    name: 'Beverages',
    image: 'eat.jfif',
  ),
  
];

class Catagories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: White, boxShadow: [
                    BoxShadow(
                      color: Green[50],
                      offset: Offset(4, 6),
                      blurRadius: 15,
                    ),
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      'images/${catagoriesList[index].image}',
                      width: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: catagoriesList[index].name,
                  color: Black,
                  size: 14,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

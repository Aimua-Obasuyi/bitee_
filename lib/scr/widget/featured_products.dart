import 'package:bitee_/scr/models/products.dart';
import 'package:bitee_/scr/widget/title.dart';
import 'package:flutter/material.dart';

import '../helpers/style.dart';

List<Products> productsList = [
      Products(
    name: 'Food',
    image: 'goodfood.jpg',
    price: 200,
   rating: 4.2,
   wishList: true,
  ),

  Products(
    name: 'Food',
    image: 'goodfood.jpg',
    wishList: false,
    rating: 3,
    price: 200,
  ),
  Products(
    name: 'Meat',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),
  Products(
    name: 'Soups and Stew',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),
  Products(
    name: 'Swallow',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),
  Products(
    name: 'Side Dishes',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),

  Products(
    name: 'Snacks',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),
  Products(
    name: 'Beverages',
    image: 'goodfood.jpg',
    wishList: true,
    rating: 4.2,
    price: 200,
  ),
  

];



class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
         scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
              child: GestureDetector(
                onTap: (){
                  changeScreen()
                },
                              child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(color: White, boxShadow: [
                    BoxShadow(
                      color: Green[50],
                      offset: Offset(15, 5),
                      blurRadius: 30,
                    ),
                  ]),
                  child: Column(
                    children: [
                      Image.asset('images/${productsList[index].image}'),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: CustomText(
                              text: productsList[index].name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: White,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Green[50],
                                      offset: Offset(4, 6),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: productsList[index].wishList ? Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Green,
                                )
                             :  Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Green,
                                ),
                
                             
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: productsList[index].rating.toString(),
                                color: Gray,
                                size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: Green,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Green,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Green,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Green,
                                size: 15,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Green,
                                size: 15,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: '\$${productsList[index].price.toString()}',
                          
                              weight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

import 'package:bitee_/scr/widget/button_navigation_icon.dart';
import 'package:bitee_/scr/widget/catagory.dart';
import 'package:bitee_/scr/widget/featured_products.dart';
import 'package:bitee_/scr/widget/title.dart';
import 'package:flutter/material.dart';
import '../commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  Scaffold buildScaffold() {
    return Scaffold(
      backgroundColor: White,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomText(
                    text: 'What would you like to eat?',
                    size: 15,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          size: 20,
                        ),
                        onPressed: () {}),
                    Positioned(
                      top: 13,
                      right: 15,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Green,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: White, boxShadow: [
                  BoxShadow(
                    color: Gray[300],
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Green,
                  ),
                  title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Find Food or Resturants',
                          border: InputBorder.none)),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Catagories(),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: 'Featured (Popular Foods)',
                  size: 19,
                  color: Gray,
                )),
            Featured(),
            SizedBox(
              height: 2,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: 'Best Food',
                  size: 19,
                  color: Gray,
                )),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/ssssss.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Green,
                              boxShadow: [
                                BoxShadow(
                                  color: Green[50],
                                  offset: Offset(4, 6),
                                  blurRadius: 15,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                              color: White,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: White,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Icon(
                                    Icons.star,
                                    color: Green,
                                    size: 20,
                                  ),
                                ),
                                Text('4.5')
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                              ])),
                    ),
                  ),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'pancakes \n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                            TextSpan(
                              text: '\$ 20 \n',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(color: White, boxShadow: [
          BoxShadow(
            color: Green[50],
            offset: Offset(1, 1),
            blurRadius: 10,
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtoNavIcon(
                image: 'home.png',
                name: 'Home',
              ),
             ButtoNavIcon(
                image: 'near_by.png',
                name: 'Near By',
              ),
              ButtoNavIcon(
                image: 'cart.png',
                name: 'Cart',
              ),
             ButtoNavIcon(
                image: 'account.png',
                name: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

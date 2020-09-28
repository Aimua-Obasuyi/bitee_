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

                Image.asset('images/ssssss.jpg')
          ],
        ),
      ),


      bottomNavigationBar: Container(
        
        // color: White,
          decoration: BoxDecoration(color: White, boxShadow: [
                  BoxShadow(
                    color: Green[50],
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    'images/home.png',
                  ),
                  
                  
                  color: Green,
                  size: 26,
                  semanticLabel: 'Home',
                ),
                
              
                onPressed: () {},
             
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    'images/near_by.png',
                  ),
                     size: 26,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    'images/cart.png',
                  ),
                     size: 26,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage(
                    'images/account.png',
                  ),
                     size: 26,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bitee_/scr/helpers/style.dart';
import 'package:bitee_/scr/models/products.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final Products product;

  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: White,
      body: Column(
        children: [],
      ),
    );
  }
}

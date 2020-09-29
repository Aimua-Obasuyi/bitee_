import 'package:bitee_/scr/widget/title.dart';
import 'package:flutter/material.dart';

class ButtoNavIcon extends StatelessWidget {
  final String image;
  final String name; 

  const ButtoNavIcon({Key key, this.image, this.name}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: IconButton(
            icon: ImageIcon(
              AssetImage(
                'images/$image',
              ),
            ),
            onPressed: () {},
          ),
        ),
        CustomText(
          text: name,
          size: 13,
        ),
      ],
    );
  }
}

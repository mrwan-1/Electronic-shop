import 'package:flutter/material.dart';

import '../../constants.dart';

class ProdectImage extends StatelessWidget {
  const ProdectImage({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultpadding),
      height: size.width*0.8 ,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.7,
            height: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
          ),
          Image.asset(image,
          width: size.width * 75,
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, this.fildcolor,
     this.isSelected = false,
  }) : super(key: key);

  final fildcolor;
  final isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultpadding / 2.5),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:Border.all(color:isSelected? ktextligthColor:Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fildcolor,
        ),
      ),
    );
  }
}


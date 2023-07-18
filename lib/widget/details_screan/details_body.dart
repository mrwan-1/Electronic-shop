// ignore_for_file: prefer_const_constructors

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';
import 'details_image.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({Key? key, required this.product}) : super(key: key);
   final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultpadding * 1.5),
        decoration:const BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)),
        ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: ProdectImage(size: size,image:product.image)),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: kDefaultpadding),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ColorDot(
               fildcolor: ktextligthColor,
               isSelected: true,
              ),
              ColorDot(
               fildcolor: Colors.blue,
               isSelected: false,
              ),
               ColorDot(
               fildcolor: Colors.red,
               isSelected: false,
              ),
            ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: kDefaultpadding / 2),
           child: Text(product.titel,
           style: Theme.of(context).textTheme.headline6,),
         ),
         Text('السعر : \$${product.price}',
         style: TextStyle(fontSize: 28,color: kscaondaryColor),),
         SizedBox(height: kDefaultpadding,)
        ],
       ),
      ),
       Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultpadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultpadding * 1.5,
        vertical: kDefaultpadding / 2),
          child: Text(product.description,style: TextStyle(
          fontSize: 24,fontWeight:FontWeight.w600,color: Colors.white),),
         ),
      ],
    );
  }
}


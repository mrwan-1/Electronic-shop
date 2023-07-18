import 'package:electronic_store/models/product.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: kDefaultpadding),
       child: Container(
       child: Stack(
         children: [
         ClipRRect(
           borderRadius: const BorderRadius.all(Radius.circular(50)),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
             child: Image.asset(product.image,width: size.width/2,),
           ),
         )
       ]),
       ),
     );
  }
}



 



import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.itemIndex, required this.product, required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    margin:const EdgeInsets.symmetric(
      vertical: kDefaultpadding,
      horizontal: kDefaultpadding /2,
    ),
    height: 190.0,
    child:InkWell(
      onTap: () {
        press();
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
        Container(
          height: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [ BoxShadow(
             offset: Offset(0 ,15),
              blurRadius: 20,
              color: Colors.black12,
            )],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: kDefaultpadding,),
            height: 160,
            width: 200,
            child:Image.asset(product.image,fit: BoxFit.cover,),),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child:SizedBox(height: 136,
              width: size.width - 200 ,
              child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
                  child: Text(product.titel,style: Theme.of(context).textTheme.bodyText1,),
                ),
                Spacer(),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
                   child: Text(product.subtitel,style:Theme.of(context).textTheme.caption,),
                 ),
                 Spacer(),
                 Padding(
                   padding: const EdgeInsets.all(kDefaultpadding),
                   child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: kDefaultpadding *1.5,
                    vertical: kDefaultpadding /5),
                    decoration: BoxDecoration(
                      color: kscaondaryColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text('السعر : \$${product.price}'),
                   ),
                 )
              ],),
              ),
               )
      ]),
    ) ,
      );
  }
}
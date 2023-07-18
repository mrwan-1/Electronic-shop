import 'package:electronic_store/constants.dart';
import 'package:electronic_store/widget/home/advertisement.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../screens/details_scren.dart';
import 'product_card.dart';
import 'appdar.dart';
class Homebody extends StatelessWidget {
  const Homebody({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false, 
      child: 
    Column(children: [
    // الشريط العلوي
    const Appbar(),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(

        children: List.generate(products.length, (index) => Advertisement(product: products[index],))
      ),
    ),
    Expanded(child: Stack(children: [
      Container(
        margin:const EdgeInsets.only(top:70),
        decoration:const BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
        ),
      ),
       ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) =>  ProductCard(itemIndex: index,product: products[index],
         press: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsScrean(product: products[index],),),);
         },
         ),
         ),   
    ],),
    ),
    ],),
    );
    
  }
}




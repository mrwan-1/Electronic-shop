import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:electronic_store/widget/details_screan/details_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DetailsScrean extends StatelessWidget {
  const DetailsScrean({Key? key, required this.product}) : super(key: key);
   final Product product;
  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:kBlueColor ,
      appBar:AppBar(
      elevation: 0,
      backgroundColor: kbackgroundColor,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon:const Icon(Icons.arrow_back,color: kBlueColor,)),
      centerTitle: false,
      title: const Text('رجوع',style: const TextStyle(color: Colors.black),),
    ),     
      body: Detailsbody(product: product,
       
      ),

    );
  }
}


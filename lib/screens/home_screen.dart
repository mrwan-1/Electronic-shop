import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:electronic_store/widget/home/home_body.dart';
import 'package:flutter/material.dart';
import '../widget/home/bottonNavigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kprimaryColor,
      //body style
      body: Homebody(),
    );
     const BottonNiv();
  }

}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
       backgroundColor: kprimaryColor,
        elevation: 0,
        centerTitle: true,
     actions: [

       IconButton(onPressed: (){}, icon:const Icon(Icons.menu),color: Colors.white,),
       
       Center(child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding * 3.3),
         child: Text(' متجر الاكتروني',style: TextStyle(fontSize: 20,color: Colors.white),),
       )),
       IconButton(onPressed: (){}, icon:const Icon(Icons.play_lesson),color: Colors.white,),
      IconButton(onPressed: (){}, icon:const Icon(Icons.account_circle ),color: Colors.white,),
    ],
    );
  }
}


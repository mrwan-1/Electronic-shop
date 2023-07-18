import 'package:electronic_store/constants.dart';
import 'package:electronic_store/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:fancy_bottom_navigation_2/internal/tab_item.dart';
import 'package:fancy_bottom_navigation_2/paint/half_clipper.dart';
import 'package:fancy_bottom_navigation_2/paint/half_painter.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electronic Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kprimaryColor,
        accentColor: kprimaryColor,
      ),
     localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar', 'AE'), // عربي
        ],
      home:const HomeScreen(),
      
    );
  }
}


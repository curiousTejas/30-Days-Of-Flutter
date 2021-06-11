import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/loginPage.dart';
import 'package:flutter_catalog/utilities/routes.dart';
import 'pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        Routes.homeRoute: (context) => HomePage(),
        Routes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

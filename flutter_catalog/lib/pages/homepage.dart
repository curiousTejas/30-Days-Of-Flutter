import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

//Day 11 - Learn about context, constraints and 3 trees: widget, element, render. .

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "#30DaysOfFlutter";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $str!"),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:top_beers/screens/Home.dart';

void main() => runApp(BeerListApp());

class BeerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>MaterialApp(

    title: 'Beer List App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor:   Colors.black,
      accentColor: Colors.black,
    ),
    home: Home(),
  );

}

import 'package:flutter/material.dart';
import 'package:top_beers/screens/Beer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:top_beers/screens/BeerTile.dart';
import 'package:top_beers/screens/callApi.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }

  void listenForBeers() async {
    final Stream<Beer> stream = await getBeers();
    stream.listen((Beer beer) =>
        setState(() =>  _beers.add(beer))
    );
  }



  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      centerTitle: true,
      title: Text("Top Beers"),
    ),

    body: ListView.builder(
      itemCount: _beers.length,
      itemBuilder: (context, index) => BeerTile(_beers[index]),
    ),


  );
}



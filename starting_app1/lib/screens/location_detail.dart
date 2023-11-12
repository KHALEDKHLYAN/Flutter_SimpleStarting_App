// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:starting_app1/models/location.dart';

// ignore: use_key_in_widget_constructors
class LocationDetail extends StatelessWidget {
  // const LocationDetail({super.key});
  final Location location;

  // ignore: use_key_in_widget_constructors
  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: renderFacts(location),
      ),
    );
  }

  List<Widget> renderFacts(Location location) {
    var results = <Widget>[];

    for (int i = 0; i < location.facts.length; i++) {
      results.add(sectionTitle(location.facts[i].title));
      results.add(sectionText(location.facts[i].text));
    }
    return results;
  }

  Widget sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 24.0,color: Colors.black),
      ),
    );
  }

  Widget sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
        child: Text(text));
  }
}
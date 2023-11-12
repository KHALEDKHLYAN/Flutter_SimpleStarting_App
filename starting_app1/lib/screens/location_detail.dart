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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: renderBody(context, location),
        ),
      ),
    );
  }

  List<Widget> renderBody(BuildContext context, Location location) {
    var results = <Widget>[];
    results.add(bannerIange(location.url, 170.0));
    results.addAll(renderFacts(context, location));
    return results;
  }

  List<Widget> renderFacts(BuildContext context, Location location) {
    var results = <Widget>[];

    for (int i = 0; i < location.facts.length; i++) {
      results.add(sectionTitle(location.facts[i].title));
      results.add(sectionText(location.facts[i].text));
    }
    return results;
  }

  Widget sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        text,
      ),
    );
  }

  Widget bannerIange(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}

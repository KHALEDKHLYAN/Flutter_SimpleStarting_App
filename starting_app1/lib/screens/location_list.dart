import 'package:flutter/material.dart';
import 'package:starting_app1/models/location.dart';
import 'package:starting_app1/styless.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Location List',
          style: Styles.navBarTitle,
        ),
      ),
      body:Container(),
    );
  }
}

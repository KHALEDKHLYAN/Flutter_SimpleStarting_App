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
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: itemThumbnail(locations[index]),
            title: itemTitle(locations[index]),
          );
        },
      ),
    );
  }

  Widget itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        location.url,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget itemTitle(Location location) {
    return Text(
      location.name,
      style: Styles.textDefault,
    );
  }
}

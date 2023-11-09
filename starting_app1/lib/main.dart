import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PortFolio',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(icon: Icon(Icons.person_2_rounded), onPressed: (){} )
          ],
        ),
      ),
    );
  }
}
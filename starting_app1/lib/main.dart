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
          title: const Text(
            'PortFolio',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
                icon: const Icon(Icons.person_2_rounded), onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text('Khaledkhlyan@gmail.com'),
                accountName: Text('KHALED_4Cus'),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/bleach.jpg'),
                ),
              ),
              customBuildListTile(Icons.home, 'Home Page 1', () { 
                Navigator.pop(context);
              }),
              customBuildListTile(Icons.train, 'Train Page 2', () { 
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}


ListTile customBuildListTile(IconData icon, String text, VoidCallback onTap) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
    onTap: onTap,
  );
}
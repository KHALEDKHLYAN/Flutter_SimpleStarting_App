import 'package:flutter/material.dart';

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key});

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    // const List<Widget> _pages = <Widget>[
    //   Icon(
    //     Icons.call,
    //     size: 150,
    //   ),
    //   Icon(
    //     Icons.camera,
    //     size: 150,
    //   ),
    //   Icon(
    //     Icons.chat,
    //     size: 150,
    //   ),
    // ];

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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800], 
          type: BottomNavigationBarType.shifting,
          selectedFontSize: 20,
          selectedIconTheme: const IconThemeData(color: Colors.amberAccent),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call,color: Colors.black),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera, color: Colors.black),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat,color: Colors.black,),
              label: 'Chats',
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.deepOrangeAccent,
          onTap: _onItemTapped,
          // backgroundColor: Colors.grey[800], 
        ),
        body: Container(
              

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

BottomNavigationBarItem buildBottomNavigationBarItem(
    IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> schedule = [
    "6:00 AM - 6:30 AM: Wake up and morning routine",
    "6:30 AM - 7:00 AM: Breakfast",
    "7:00 AM - 8:30 AM: Coding",
    "8:30 AM - 9:00 AM: Networking",
    "9:00 AM - 12:00 PM: Coding",
    "12:00 PM - 12:30 PM: Lunch",
    "12:30 PM - 3:30 PM: Coding",
    "3:30 PM - 4:00 PM: Networking",
    "4:00 PM - 5:00 PM: School work",
    "5:00 PM - 6:00 PM: Gym time (exercise)",
    "6:00 PM - 7:00 PM: Dinner",
    "7:00 PM - 8:00 PM: Chess",
    "8:00 PM - 8:30 PM: Phone time (for personal use)",
    "8:30 PM - 9:00 PM: Wind down and relax",
    "9:00 PM: Sleep",
  ];

  
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'TimeTable App',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        // body: Center(
        //   child: Column(children: <Widget>[
        //     Container(
        //       margin: EdgeInsets.all(20),
        //       child: Table(
        //         defaultColumnWidth: FixedColumnWidth(120.0),
        //         border: TableBorder.all(
        //             color: Colors.black, style: BorderStyle.solid, width: 2),
        //         children: [
        //           TableRow(children: [
        //             Column(children: [
        //               Text('Website', style: TextStyle(fontSize: 20.0))
        //             ]),
        //             Column(children: [
        //               Text('Tutorial', style: TextStyle(fontSize: 20.0))
        //             ]),
        //             Column(children: [
        //               Text('Review', style: TextStyle(fontSize: 20.0))
        //             ]),
        //           ]),
        //           buildTableRow('hello', 'Javascript', '5*'),
        //           buildTableRow('Javatpoint', 'Flutter', '5*'),
        //           buildTableRow('Javatpoint', 'MySQL', '5*'),
        //           buildTableRow('Javatpoint', 'ReactJS', '5*'),
        //         ],
        //       ),
        //     ),
        //   ]),
        body: ListView.builder(
          itemCount: schedule.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(

              title: Text(schedule[index]),
            );
          },
        ),
      ),
    );
  }
}

TableRow buildTableRow(String name, String technology, String rating) {
  return TableRow(
    children: [
      Column(children: [Text(name)]),
      Column(children: [Text(technology)]),
      Column(children: [Text(rating)]),
    ],
  );
}

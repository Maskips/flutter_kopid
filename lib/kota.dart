import 'package:flutter/material.dart';

class Kota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: BelajarView(),
    );
  }
}

class BelajarView extends StatelessWidget {
  final List bulan = [
    "Noah",
    "Pamungkas",
    "Hindia",
    "Dialog Senja",
    "Naf",
    "Last Child",
    "Tris Suaka",
    "Woro Widowati",
    "Felix Cover",
    "Armada",
    "OK ON ROCK",
    "Rich chiga"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            // child: Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Text(bulan[index], style: TextStyle(fontSize: 30)),
            child: ListTile(
                title: Text(bulan[index], style: TextStyle(fontSize: 30)),
                subtitle: Text('Ini Subtitle dari' + bulan[index]),
                leading: CircleAvatar(
                  child: Text(bulan[index][0], //Ambil karakter pertama text
                      style: TextStyle(fontSize: 20)),
                )),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}

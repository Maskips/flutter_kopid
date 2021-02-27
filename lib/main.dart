import 'package:flutter/material.dart';
import 'package:project_pkl/home.dart' as home;
import 'package:project_pkl/screens/kasus_screen.dart' as kasus_screen;
import 'package:project_pkl/screens/splashscreen.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home UI TrackingCovid",
      home: new SplashScreen(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[new home.Halaman(), new kasus_screen.PostPage()],
      ),
      bottomNavigationBar: new TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        controller: controller,
        tabs: <Widget>[
          new Tab(
            icon: new Icon(
              Icons.home,
            ),
          ),
          new Tab(
            icon: new Icon(Icons.workspaces_filled),
          ),
        ],
      ),
    );
  }
}

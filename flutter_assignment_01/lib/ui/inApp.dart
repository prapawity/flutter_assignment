import 'package:flutter/material.dart';

class InApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyInApp();
  }
}

class MyInApp extends State<InApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Container(
      child: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          "Notify",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          "Map",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          "Profile",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          "Setup",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.orange,
          primaryColor: Colors.white,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important),
              title: Text('Notify'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Map'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setup'),
            )
          ],
        ),
      ),
    );
  }

  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

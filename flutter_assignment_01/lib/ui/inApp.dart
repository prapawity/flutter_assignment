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
  List name = ["Home", "Notify","Map","Profile","Setup"];
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
      appBar: AppBar(title: Text(name[_currentIndex],style: TextStyle(color: Colors.white),),centerTitle: true,),
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
              title: Text(name[_currentIndex]),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_important),
              title: Text(name[_currentIndex]),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text(name[_currentIndex]),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text(name[_currentIndex]),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(name[_currentIndex]),
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

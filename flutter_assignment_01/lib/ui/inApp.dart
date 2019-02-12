import 'package:flutter/material.dart';

class InApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyInApp();
  }

}
class MyInApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(child: Scaffold(
      appBar: AppBar(
        title: Text("Tab"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.cake)),
            Tab(icon: Icon(Icons.brush)),
            Tab(icon: Icon(Icons.broken_image))],
            ),
            ),
            body: TabBarView(children: <Widget>[Icon(Icons.cake),Icon(Icons.brush),Icon(Icons.broken_image)],),
            ), length: 3,);
  }
  
}
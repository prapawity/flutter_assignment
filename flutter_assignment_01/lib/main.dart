import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/inApp.dart';
import 'ui/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) =>Login(),
        "/second": (context) =>(InApp()),
        "/third": (context) =>(SignUp()),

        },
    );
  }
}

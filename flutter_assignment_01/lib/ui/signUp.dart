import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MySignUp();
  }
}

class MySignUp extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "USER-ID",
                  hintText: "Please Input Your USER-ID",
                  icon: Icon(Icons.account_box, size: 40, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              onSaved: (id) => print(id),
              validator: (id) {
                




              },
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "PASSWORD",
                  hintText: "Please Input Your PASSWORD",
                  icon: Icon(Icons.lock, size: 40, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              obscureText: true,
              onSaved: (password) => print(password),
              validator: (password) {
                



              },
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
            RaisedButton(
              child: Text("LOGIN"),
              onPressed: () {
                _formKey.currentState.validate();
                

                
              },
              color: Colors.orange,
              splashColor: Colors.blueGrey,
              textColor: Colors.white,
            ),
          ],
        ));
  }
}

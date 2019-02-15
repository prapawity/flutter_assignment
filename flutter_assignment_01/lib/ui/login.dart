import 'package:flutter/material.dart';
import 'inApp.dart';
import 'userpass.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyLogin();
  }
}

class MyLogin extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool state = false;
  String user, pass;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,       
      appBar: AppBar(),
      body: new Builder(
        builder: (BuildContext) {
          return SafeArea(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 15, 30, 0),
                children: <Widget>[
                  new Image.asset(
                    "resource/logo.png",
                    height: 250,
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "USER-ID",
                        hintText: "Please Input Your USER-ID",
                        icon: Icon(Icons.account_box,
                            size: 40, color: Colors.orange),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (id) => print(id),
                    validator: (id) {
                      if (id.isEmpty) {
                        return "Please Input Your USER-ID";
                      } else {
                        user = id;
                      }
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
                      if (password.isEmpty) {
                        return "Please Input Your PASSWORD";
                      } else {
                        pass = password;
                      }
                    },
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
                  RaisedButton(
                    child: Text("LOGIN"),
                    onPressed: () {
                      _formKey.currentState.validate();
                      if (user == UserPass.idPass[0][0] &&
                          pass == UserPass.idPass[0][1]) {
                        Navigator.pushReplacementNamed(context, "/second");
                      } else {
                        _displaySnackBar(context);
                      }
                    },
                    color: Colors.orange,
                    splashColor: Colors.blueGrey,
                    textColor: Colors.white,
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text("Register New Account",
                          textAlign: TextAlign.right),
                    ),
                    onPressed: () {
                      state = true;
                      Navigator.pushNamed(context, "/third");
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  _displaySnackBar(BuildContext context) {
  final snackBar = SnackBar(content: Text('USER or PASSWORD is Incorrect'));
  _scaffoldKey.currentState.showSnackBar(snackBar);
}

}

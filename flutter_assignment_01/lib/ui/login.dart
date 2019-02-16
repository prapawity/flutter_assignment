import 'package:flutter/material.dart';
import 'userpass.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyLogin();
  }
}

class MyLogin extends State<Login> {
  final TextEditingController _controller = new TextEditingController();
  final TextEditingController _controller2 = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool state = false,chk2 =false;
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
                    controller: _controller,
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
                        chk2 = true;
                        return "Please Input Your USER-ID";
                      } else {
                        user = id;
                      }
                    },
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                  TextFormField(
                    controller: _controller2,
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
                        chk2 = true;
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
                      bool chk = false;
                      _formKey.currentState.validate();
                      for (var item in UserPass.idPass) {
                        if (user == item[0] && pass == item[1]) {
                          Navigator.pushReplacementNamed(context, "/second");
                          chk = true;
                        }
                      }
                      if (chk == false && chk2 == false) {
                        _displaySnackBar(context);
                      }
                      _controller.clear();
                      _controller2.clear();
                      chk2 = false;
                    },
                    color: Colors.orange,
                    splashColor: Colors.blueGrey,
                    textColor: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: SizedBox(
                          child: Text("Register New Account",
                              textAlign: TextAlign.right),
                        ),
                        onPressed: () {
                          state = true;
                          Navigator.pushNamed(context, "/third");
                          _controller.clear();
                          _controller2.clear();
                        },
                      )
                    ],
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

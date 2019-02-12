import 'package:flutter/material.dart';
import 'inApp.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyLogin();
  }
}

class MyLogin extends State<Login> {
  bool state = false;
  List admin = ["admin","admin"];
  String user,pass;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 15, 30, 0),
            children: <Widget>[
              new Image.asset(
                "resource/logo.png",
                height: 250,
              ),Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 10)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "USER-ID",
                  hintText: "Please Input Your USER-ID",
                  icon: Icon(Icons.account_box,size: 40, color: Colors.orange),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                onSaved: (id) => print(id),
                validator: (id) {
                  if (id.isEmpty) {
                    return "Please Input Your USER-ID";
                  }
                  else{
                    user = id;
                  }
                },
              ),Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  hintText: "Please Input Your PASSWORD",
                  icon: Icon(Icons.lock,size: 40,color: Colors.orange),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
                obscureText: true,
                onSaved: (password) => print(password),
                validator: (password) {
                  if (password.isEmpty) {
                    return "Please Input Your PASSWORD";
                  }
                  else{
                    pass = password;
                  }
                },
              ),Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  _formKey.currentState.validate();
                  if(user == admin[0] && pass == admin[1]){
                      Navigator.pushReplacementNamed(context, "/second");
                  }
                },color: Colors.orange,
                splashColor: Colors.blueGrey,
                textColor: Colors.white,
              ),
              FlatButton(
                
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text("Register New Account",textAlign: TextAlign.right),
                ),
                onPressed: (){
                    state = true;
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

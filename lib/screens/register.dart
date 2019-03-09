import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Widget child;

  Register({Key key, this.child}) : super(key: key);

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.cloud_upload),
          onPressed: () {
            print('You click upload');
          },
        )
      ]),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 60.0),
            child: nameTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: emailTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: passwordTextField(),
          )
        ],
      ),
    );
  }
}

Widget nameTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Name', hintText: 'Name Only'),
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Email', hintText: 'Email '),
  );
}

Widget passwordTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Password', hintText: '5 charactor'),
  );
}

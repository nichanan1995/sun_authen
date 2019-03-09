import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Authen',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 50.0),
            child: logoShow(),
          ),
          Container(
            alignment: Alignment.center,
            child: titleApp(),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: emailTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: passwordTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: <Widget>[
                new Expanded(
                  child: signInButton(),
                ),
                new Expanded(
                  child: signUpButton(),
                )
                //new Expanded(child: Container(child: testText(),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget testText() {
  return Text('textText');
}

Widget logoShow() {
  return Image.asset('images/logo.png');
}

Widget titleApp() {
  return Text(
    'Sun Authen',
    style: TextStyle(
        fontSize: 30.0,
        fontFamily: 'Kanit-Bold',
        fontWeight: FontWeight.bold,
        color: Colors.orange[800],),
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: 'Email Address:', hintText: 'youur@email.com'),
  );
}

Widget passwordTextField() {
  return TextFormField(
    decoration:
        InputDecoration(labelText: 'Password:', hintText: 'more 5 Charactor'),
  );
}

Widget signInButton() {
  return RaisedButton(
    color: Colors.yellow,
    child: Text(
      'SignIn',
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {},
  );
}

Widget signUpButton() {
  return RaisedButton(
    color: Colors.orange,
    child: Text(
      'SignUp',
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {},
  );
}

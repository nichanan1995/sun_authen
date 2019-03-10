import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import '../main.dart';

class Register extends StatefulWidget {
  final Widget child;

  Register({Key key, this.child}) : super(key: key);

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  String nameString = '';
  String emailString = '';
  String passwordString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          actions: <Widget>[
            IconButton(
              tooltip: 'Upload To Server',
              icon: Icon(Icons.cloud_upload),
              onPressed: () {
                uploadToServer();
              },
            )
          ],
        ),
        body: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
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
        ));
  }

  void uploadToServer() {
    print('You Click Upload');
    // formKey.currentState.reset();
    print(formKey.currentState.validate());
    formKey.currentState.save();
    print(
        'Name = $nameString, email = $emailString, password = $passwordString');
    sentNewUserToServer(nameString, emailString, passwordString);
  }

  void sentNewUserToServer(
      String userName, String userEmail, String userPassword) async {
    String url =
        'http://androidthai.in.th/sun/addUserOil.php?isAdd=true&Name=$userName&User=$userEmail&Password=$userPassword';
    var respone = await get(url);
    var result = json.decode(respone.body);
    print('result ==>$result');
    if (result.toString() == 'true') {

      print('back process');
      Navigator.pop(context);

      // var backRount =new MaterialPageRoute(builder: (BuildContext )=> HomePage());
      // Navigator.of(context).push(backRount);

    } 
  }

  Widget nameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name:', hintText: 'Name Only'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Name not Blank ?';
        }
      },
      onSaved: (String name) {
        nameString = name;
      },
    );
  }

  Widget emailTextField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Email Address:', hintText: 'you@abc.com'),
      validator: (String email) {
        if (!email.contains('@')) {
          return 'please fill Email Format ';
        }
      },
      onSaved: (String email) {
        emailString = email;
      },
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password:', hintText: 'more 5 Charactor'),
      validator: (String password) {
        if (password.length <= 5) {
          return 'password !!!!!!!';
        }
        // },onSaved: (String password){
        //   passwordString = password;
      },
      onSaved: (String password) {
        passwordString = password;
      },
// _RegisterState Class
    );
  }
}

import 'package:flutter/material.dart';

class Service extends StatefulWidget {

  final String nameLoginString;


  Service({Key key, this.nameLoginString}) : super(key: key);

  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.nameLoginString}'),
      ),
      body: Text('เข้ามาซิจ๊ะ oิ_oิ ${widget.nameLoginString}'),
    );
  }
}

import 'package:flutter/material.dart';

class PageSateful extends StatefulWidget {
  final String texto;

  PageSateful(this.texto, {Key? key}) : super(key: key);

  @override
  _PageSatefulState createState() => _PageSatefulState();
}

class _PageSatefulState extends State<PageSateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Center(
        child: Text(widget.texto),
      ),
    );
  }
}

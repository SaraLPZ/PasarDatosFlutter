import 'package:curso_flutter/pages/pageStatefull.dart';
import 'package:curso_flutter/pages/pageStateless.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: "");
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: _textoController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingresa informcion",
                  ),
                )),
            Builder(
                builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PageStateles(_textoController.text)));
                    },
                    child: Text("Enviar Stateless"))),
            Builder(
                builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PageSateful(_textoController.text)));
                    },
                    child: Text("Enviar Stateful")))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jorisjeanmich/transfer.dart';

import 'lib_http..dart';
import 'main.dart';

class PageSeconde extends StatefulWidget {
  const PageSeconde({Key? key}) : super(key: key);

  @override
  _PageSecondeState createState() => _PageSecondeState();
}

class _PageSecondeState extends State<PageSeconde> {
  var param1 = TextEditingController();
  var param2 = TextEditingController();
  var param3 = TextEditingController();


  List<Truc> liste = [new Truc()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(child: Column(children: [ Icon(Icons.person, size: 100),Text("My name", style: TextStyle(fontSize: 20),)],) ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0,0 ),
            child: Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.home, size: 25),
                ),
                TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())); },
                  child: Text("Page1"),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0,0 ),
            child: Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.local_fire_department_rounded, size: 25),
                ),
                TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => PageSeconde())); },
                    child: Text("page2")),
              ],
            ),
          ),
        ],
        ),
      ),
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded( flex: 1,
                  child: Column(
                    children: [
                      TextField(
                        controller: param1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "parametre1",
                            hintText: "taper"),
                      ),
                    ],
                  ),
                ),
                Expanded( flex: 1,
                  child: Column(
                    children: [             TextField(
                      controller: param1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "parametre2",
                          hintText: "taper"),
                    ),],
                  ),
                ),
                Expanded( flex: 1,
                  child: Column(
                    children: [             TextField(
                      controller: param1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "parametre3",
                          hintText: "taper"),
                    ),],
                  ),
                ),
              ],
            ),
            Row(children: [TextButton(onPressed: () {SendData(param1.value.toString(), param2.value.toString(), param3.value.toString());  },
            child: Text("fuf"),)],),
            Row(children: [Expanded(child: Text("poggers"))],)
          ],
        ),
      ),
    );
  }

  void SendData(String param1, String param2, String param3) async {
    var response = await httpListComplex(param1, param2, param3);
  }
}

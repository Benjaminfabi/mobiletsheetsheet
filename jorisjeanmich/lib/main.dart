
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortaitPaysage(),
      theme: ThemeData(primaryColor: Color.fromRGBO(255, 0, 0, 1)),
    );
  }
}

class PortaitPaysage extends StatefulWidget {
  @override
  _PortaitPaysageState createState() => _PortaitPaysageState();
}

class _PortaitPaysageState extends State<PortaitPaysage> {



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
                TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())); },
                    child: Text("page2")),
              ],
            ),
          ),
        ],
        ),
      ),
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(child: Column(
      children: [
        Expanded( child: Container(color: Colors.amberAccent, child: Row( mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [TextButton(onPressed: (){}, child: Text("poggersNormal", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)))],))),
        Expanded( child: Container(color: Colors.blue, child: Row(children: [TextButton(onPressed: (){}, child: Text("bas"))],))),
      ],
    ));
  }

  Widget _buildWideContainers() {
    return Center(child: Row(
      children: [
        Expanded(child: Container(color: Colors.deepOrangeAccent, child: Column(children: [TextButton(onPressed: (){}, child: Text("poggerswide", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),)],))),
        Expanded(child: Container(color: Colors.purple, child: Column(children: [TextButton(onPressed: (){}, child: Text("poggerswide", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),)],))),
      ],
    ));
  }
}

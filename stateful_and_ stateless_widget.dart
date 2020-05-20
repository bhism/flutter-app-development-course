import 'package:flutter/material.dart';

void main(){
  runApp(demo());
}

class demo extends StatefulWidget {
  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'my app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),

      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var variable=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('webfun',),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('no. of times',),
            Text('$variable',),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            variable=variable+1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
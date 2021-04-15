import 'package:designone/ui/five/designfive.dart';
import 'package:designone/ui/four/design_four.dart';
import 'package:designone/ui/one/design_one.dart';
import 'package:designone/widgets/buttonwidgets.dart';
import 'package:flutter/material.dart';

import 'three/design_three.dart';
import 'two/design_two.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: false,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            ButtonWidgets(
              name: 'Design One',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DesignOne()),
                );
              },
            ),
            ButtonWidgets(
              name: 'Design Two',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DesignTwo()),
                );
              },
            ),
            ButtonWidgets(
              name: 'Design Three',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DesignThree()),
                );
              },
            ),
            ButtonWidgets(
              name: 'Just Go For it',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DesignFour()),
                );
              },
            ),
            ButtonWidgets(
              name: 'Rapido',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DesignFive()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

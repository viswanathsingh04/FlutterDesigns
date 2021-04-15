import 'package:flutter/material.dart';

class DesignFive extends StatefulWidget {
  @override
  _DesignFiveState createState() => _DesignFiveState();
}

class _DesignFiveState extends State<DesignFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            'Center Text',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}

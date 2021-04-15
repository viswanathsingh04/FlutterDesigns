import 'package:flutter/material.dart';

class DesignFour extends StatefulWidget {
  @override
  _DesignFourState createState() => _DesignFourState();
}

class _DesignFourState extends State<DesignFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Design Four",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}

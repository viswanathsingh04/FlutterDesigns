import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  ButtonWidgets({Key key, this.name, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextButton(
        child: Text(
          this.name,
          style: new TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
          overflow: TextOverflow.fade,
        ),
        style: TextButton.styleFrom(
          minimumSize:  Size(100, 50),
          elevation: 4,
          backgroundColor: Colors.green,
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.0),
              bottomRight: Radius.circular(16.0),
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(4.0),
            ),
          ),
        ),
        onPressed: this.onTap,
      ),
    );
  }
}

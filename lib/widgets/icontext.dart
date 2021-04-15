import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String name;
  final IconData iconname;
  IconText({Key key, @required this.iconname, @required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.iconname,
          color: Colors.white,
        ),
        Text(
          this.name,
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          overflow: TextOverflow.fade,
        ),
      ],
    );
  }
}

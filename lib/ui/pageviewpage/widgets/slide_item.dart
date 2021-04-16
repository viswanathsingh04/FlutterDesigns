import 'package:designone/ui/pageviewpage/model/slide.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: height * 0.45,
          child: Image.asset(
            slideList[index].imageUrl,
            fit: BoxFit.cover,
          ),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   image: DecorationImage(
          //     image: AssetImage(slideList[index].imageUrl),
          //     fit: BoxFit.cover,
          //   ),
          // ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  slideList[index].title,
                  style: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  slideList[index].description,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

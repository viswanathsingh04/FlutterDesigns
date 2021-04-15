import 'package:designone/ui/two/bodypage.dart';
import 'package:designone/widgets/icontext.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Griditem griditem;
  DetailPage({Key key, this.griditem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     this.griditem.name,
      //     style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      //     overflow: TextOverflow.fade,
      //   ),
      //),
      body: Container(
        height: height,
        width: width,
        decoration: new BoxDecoration(
          color: const Color(0xff7c94b6),
          image: new DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: new NetworkImage(
              griditem.url,
            ),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50.0,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      this.griditem.name,
                      style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      overflow: TextOverflow.fade,
                    ),
                    IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.settings_overscan_outlined),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 60,
            //   left: 10,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       IconButton(
            //           icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
            //       IconButton(
            //           icon: Icon(Icons.settings_overscan_outlined),
            //           onPressed: () {}),
            //     ],
            //   ),
            // ),
            Positioned(
              top: 160,
              left: 10,
              child: Column(
                children: [
                  IconText(
                    iconname: Icons.favorite,
                    name: 3.toString(),
                  ),
                  IconText(
                    iconname: Icons.favorite,
                    name: 3.toString(),
                  ),
                  IconText(
                    iconname: Icons.favorite,
                    name: 3.toString(),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 48.0,
              left: 10.0,
              right: 10.0,
              child: Card(
                elevation: 8.0,
                color: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "New York",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton.icon(
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Follow",
                              style: new TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          onPressed: () {},
                          icon: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add_alarm_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.pink,
                            elevation: 6,
                            shadowColor: Colors.pink,
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

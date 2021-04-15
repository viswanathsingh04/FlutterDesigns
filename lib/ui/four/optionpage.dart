import 'package:carousel_slider/carousel_slider.dart';
import 'package:designone/ui/four/widgets/calender.dart';
import 'package:designone/ui/four/widgets/testcount.dart';
import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';

class OptionPage extends StatefulWidget {
  @override
  _OptionPageState createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  List<int> slength = [];
  int _current = 0;

  @override
  void initState() {
    super.initState();
    slength.add(1);
    slength.add(2);
    slength.add(3);
    slength.add(4);
    slength.add(5);
    //slength.addAll(slength);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(), body: imageCarousal(slength)),
    );
  }

  Widget imageCarousal(List<int> sliders) {
    return Column(
      children: [
        CarouselSlider(
          items: sliders.map((e) {
            return Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Did you get the flu short?',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                    overflow: TextOverflow.fade,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: 100,
                      child: TextButton(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: Text(
                            'Yes',
                            style: new TextStyle(
                                //color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          shadowColor: Colors.white,
                          backgroundColor: Colors.teal,
                          onSurface: Colors.grey,
                          shape: StadiumBorder(),
                          //side: BorderSide(width: 6),
                        ),
                        onPressed: () {
                          print('object');
                          setState(() {
                            _current = _current + 1;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                //builder: (context) => CaptureDateTime(),
                                builder: (context) => TestCount(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      child: TextButton(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: Text(
                            'No',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          shadowColor: Colors.white,
                          backgroundColor: Colors.green,
                          onSurface: Colors.grey,
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {
                          print('object');
                        },
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
          }).toList(),
          options: CarouselOptions(
              height: 200,
              enlargeCenterPage: false,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.decelerate,
              enableInfiniteScroll: false,
              viewportFraction: .8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliders.map((url) {
            int index = sliders.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/silverappbarpre.dart';

class DesignFive extends StatefulWidget {
  @override
  _DesignFiveState createState() => _DesignFiveState();
}

class _DesignFiveState extends State<DesignFive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverAppBar(
                backgroundColor: Colors.yellow,
                pinned: true,
                expandedHeight: 250.0,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Demo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Tab 1"),
                      Tab(icon: Icon(Icons.lightbulb_outline), text: "Tab 2"),
                    ],
                  ),
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    // or SizedBox, etc.
                    height: 4200,
                    child: TabBarView(children: [
                      Container(
                        child: Text(
                          'Child One',
                          style: new TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Child Two',
                            style: new TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ),
                    ]),
                  );
                }),
              ),
              // SliverGrid(
              //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //     maxCrossAxisExtent: 200.0,
              //     mainAxisSpacing: 10.0,
              //     crossAxisSpacing: 10.0,
              //     childAspectRatio: 4.0,
              //   ),
              //   delegate: SliverChildBuilderDelegate(
              //     (BuildContext context, int index) {
              //       return Column(
              //         children: [
              //           DefaultTabController(
              //             length: 2,
              //             child: TabBar(
              //               tabs: [
              //                 Tab(icon: Icon(Icons.directions_car)),
              //                 Tab(icon: Icon(Icons.directions_bike)),
              //               ],
              //             ),
              //           ),
              //           Container(
              //             alignment: Alignment.center,
              //             color: Colors.yellow[100 * (index % 9)],
              //             child: Text(
              //               'grid item $index',
              //               style: new TextStyle(
              //                   fontWeight: FontWeight.bold, fontSize: 16.0),
              //             ),
              //           ),
              //         ],
              //       );
              //     },
              //     childCount: 20,
              //   ),
              // ),
              // SliverFixedExtentList(
              //   itemExtent: 50.0,
              //   delegate: SliverChildBuilderDelegate(
              //     (BuildContext context, int index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         color: Colors.lightGreenAccent[100 * (index % 9)],
              //         child: Text(
              //           'list item $index',
              //           style: new TextStyle(
              //               fontWeight: FontWeight.bold, fontSize: 16.0),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

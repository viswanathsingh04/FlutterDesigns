import 'package:designone/ui/two/bodypage.dart';
import 'package:flutter/material.dart';

class DesignTwo extends StatefulWidget {
  @override
  _DesignTwoState createState() => _DesignTwoState();
}

class _DesignTwoState extends State<DesignTwo> with TickerProviderStateMixin {
  TabController _controller;
  int selectedtabIndex = 0;

  @override
  void initState() {
    super.initState();
    _initTabController();
  }

  void _initTabController() {
    // inits Tabcontroller for Tabview
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: selectedtabIndex,
    );
    _controller.addListener(() {
      // updated index and calls the set state
      // to switch the content of the tab based on the index clicked
      selectedtabIndex = _controller.index;
      setState(() {
        _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: header(context),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.purple,
                controller: _controller,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'Lato',
                ),
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "Recommended"),
                  Tab(text: "New Models"),
                  Tab(text: "2022 show"),
                ],
              ),
            ),
          ];
        },
        body: Container(
          child: TabBarView(
            controller: _controller,
            children: <Widget>[
              BodyPage(),
              BodyPage(),
              BodyPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  //size: 40,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Icon(
                Icons.search,
                //size: 40,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Fashion Week",
            style: new TextStyle(
              fontFamily: 'Lato',
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
            ),
            overflow: TextOverflow.fade,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "2021 fashion show in tamilnadu",
            style: new TextStyle(
              fontFamily: 'Lato',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
            overflow: TextOverflow.fade,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore",
                style: new TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0,
                ),
                overflow: TextOverflow.fade,
              ),
              Icon(
                Icons.equalizer_sharp,
                //size: 40,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

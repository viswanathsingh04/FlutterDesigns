import 'package:designone/ui/detailpage.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  List<Griditem> data = [];

  @override
  void initState() {
    super.initState();
    Griditem griditem = new Griditem(
        url:
            'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
        name: 'Amutha Narayanan',
        location: 'Cuddalore');

    Griditem griditem1 = new Griditem(
        url:
            'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
        name: 'Uma Ragunathan',
        location: 'Tirchy');

    Griditem griditem2 = new Griditem(
        url:
            'https://images.unsplash.com/photo-1551024739-78e9d60c45ca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Z2lybHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
        name: 'Priya Kamaraj',
        location: 'Pondicherry');
    data.add(griditem);
    data.add(griditem1);
    data.add(griditem2);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                Griditem cm = data[index];
                return GestureDetector(
                  onTap: () {
                    print(cm.name);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => SliderPage()));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailPage(
                                  griditem: cm,
                                )));
                  },
                  child: Container(
                    child: Column(
                      // physics: BouncingScrollPhysics(),
                      // primary: false,
                      // scrollDirection: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // if ((index + 1) % 2 == 0)
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: new ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: new Image.network(
                              cm.url,
                              height: width * 0.25,
                              width: width * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                          elevation: 8,
                        ),
                        new Text(
                          cm.name,
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        new Text(
                          cm.location,
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            new Container(
              child: new ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: new Image.network(
                  'https://images.unsplash.com/photo-1618134661032-502db843ee87?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1532&q=80',
                  height: 600,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class Griditem {
  String url;
  String name;
  String location;

  Griditem({this.url, this.name, this.location});
}

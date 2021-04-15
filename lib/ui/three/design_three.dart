import 'package:flutter/material.dart';

class DesignThree extends StatefulWidget {
  @override
  _DesignThreeState createState() => _DesignThreeState();
}

class _DesignThreeState extends State<DesignThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {})
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Plant Shop',
                  style: new TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  overflow: TextOverflow.fade,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text to search';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          //labelText: 'Search',
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(8.0),
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(Icons.search),
                          ),
                        ),
                        onSaved: (String newvalue) {
                          print(newvalue);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.filter,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      topLeft: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0),
                      bottomLeft: Radius.circular(16.0),
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Tamilarasan',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                      overflow: TextOverflow.fade,
                    ),
                    trailing: Expanded(
                      child: Container(
                        //width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Column(
                          children: [
                            Text(
                              '18',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                              overflow: TextOverflow.fade,
                            ),
                            Text(
                              'x2',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

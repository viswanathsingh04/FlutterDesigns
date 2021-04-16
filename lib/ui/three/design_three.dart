import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class DesignThree extends StatefulWidget {
  @override
  _DesignThreeState createState() => _DesignThreeState();
}

class _DesignThreeState extends State<DesignThree> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Set your own goals and get better",
      description:
          "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets/images/img1.jpg",
    ),
    const OnBoardModel(
      title: "Track your progress with statistics",
      description:
          "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/images/img2.jpg',
    ),
    const OnBoardModel(
      title: "Create photo comparissions and share your results",
      description:
          "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/img3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: true,
      //   actions: [
      //     IconButton(icon: Icon(Icons.favorite_border), onPressed: () {})
      //   ],
      //   elevation: 0,
      // ),
      body: OnBoard(
          onBoardData: onBoardData,
          titleStyles: const TextStyle(
            color: Colors.deepOrange,
            fontSize: 18,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.15,
          ),
          descriptionStyles: TextStyle(
            fontSize: 16,
            color: Colors.brown.shade300,
          ),
          onSkip: () {},
          onDone: () {},
          pageIndicatorStyle: const PageIndicatorStyle(
            width: 100,
            inactiveColor: Colors.deepOrangeAccent,
            activeColor: Colors.deepOrange,
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12),
          ),
          pageController: _pageController),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             color: Colors.white,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Plant Shop',
//                   style: new TextStyle(
//                       color: Colors.black,
//                       fontFamily: 'Lato',
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0),
//                   overflow: TextOverflow.fade,
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         maxLines: 1,
//                         keyboardType: TextInputType.text,
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'Please enter some text to search';
//                           }
//                           return null;
//                         },
//                         textInputAction: TextInputAction.done,
//                         decoration: InputDecoration(
//                           hintText: 'Search',
//                           //labelText: 'Search',
//                           border: new OutlineInputBorder(
//                             borderRadius: const BorderRadius.all(
//                               const Radius.circular(8.0),
//                             ),
//                           ),
//                           prefixIcon: Padding(
//                             padding: EdgeInsets.only(top: 5),
//                             child: Icon(Icons.search),
//                           ),
//                         ),
//                         onSaved: (String newvalue) {
//                           print(newvalue);
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     IconButton(
//                       icon: Icon(
//                         Icons.filter,
//                         color: Colors.black,
//                       ),
//                       onPressed: () {},
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(16.0),
//                       topLeft: Radius.circular(6.0),
//                       bottomRight: Radius.circular(6.0),
//                       bottomLeft: Radius.circular(16.0),
//                     ),
//                     boxShadow: [
//                       new BoxShadow(
//                         color: Colors.black,
//                         blurRadius: 8.0,
//                       ),
//                     ],
//                   ),
//                   child: ListTile(
//                     leading: CircleAvatar(),
//                     title: Text(
//                       'Tamilarasan',
//                       style: new TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 16.0),
//                       overflow: TextOverflow.fade,
//                     ),
//                     trailing: Expanded(
//                       child: Container(
//                         //width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                         ),
//                         child: Column(
//                           children: [
//                             Text(
//                               '18',
//                               style: new TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 16.0),
//                               overflow: TextOverflow.fade,
//                             ),
//                             Text(
//                               'x2',
//                               style: new TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 16.0),
//                               overflow: TextOverflow.fade,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),

import 'package:designone/ui/four/landingPage.dart';
import 'package:flutter/material.dart';

class DesignFour extends StatefulWidget {
  @override
  _DesignFourState createState() => _DesignFourState();
}

class _DesignFourState extends State<DesignFour> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LandingPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 50,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

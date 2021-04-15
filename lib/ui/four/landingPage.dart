import 'package:designone/ui/four/createuserpage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(0.8),
                      Colors.white,
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an accout? ',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.account_box_rounded,
                    color: Colors.blue,
                  ),
                  GestureDetector(
                    child: Text(
                      'Create Profile',
                      style: new TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateUserPage(),
                          ));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.account_box,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Connect with Google',
                        style: new TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.account_box,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Connect with Facebook',
                            style: new TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'have an accout already ? ',
                    style: new TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0),
                    overflow: TextOverflow.fade,
                  ),
                  Text(
                    'Log in',
                    style: new TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/login_bottom.png')
            ],
          ),
        ),
      ),
    );
  }
}

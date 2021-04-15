import 'package:designone/ui/four/optionpage.dart';
import 'package:flutter/material.dart';

class CreateUserPage extends StatefulWidget {
  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
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
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'User Id',
                  labelText: 'User Id',
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(16.0),
                    ),
                  ),
                ),
                onSaved: (String newvalue) {
                  print(newvalue);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 1,
                obscureText: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    labelText: 'Password',
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                      const Radius.circular(16.0),
                    ))),
                onSaved: (String newvalue) {
                  print(newvalue);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              child: TextButton(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    'Log in',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                    overflow: TextOverflow.fade,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  shadowColor: Colors.white,
                  backgroundColor: Colors.teal,
                  onSurface: Colors.grey,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OptionPage(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

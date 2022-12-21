import 'package:flutter/material.dart';

class WelcomeGuest extends StatelessWidget {
  const WelcomeGuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
            child: new Text('PERSONNEL INFORMATION SYSTEM',
                textAlign: TextAlign.center)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Welcome \n Guest!",
          style: TextStyle(
            fontSize: 50,
            color: Colors.black45,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


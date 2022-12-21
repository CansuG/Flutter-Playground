import 'package:flutter/material.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({Key? key}) : super(key: key);

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
          "Welcome \n Özgür Özşen!",
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

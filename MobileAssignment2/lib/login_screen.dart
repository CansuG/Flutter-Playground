import 'package:flutter/material.dart';
import 'package:mobile_assignment_2/welcome_guest.dart';

import 'enter_code.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
        child: _buildLoginForm(),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              validator: (text) =>
                  text!.isEmpty ? 'Enter the phone number.' : null,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(
                'Login ➜',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                _validate();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                ),
                backgroundColor: MaterialStateProperty.all((Colors.black)),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.only(left: 25, right: 25)),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeGuest()),
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all((Colors.white)),
                ),
                child: Text(
                  "Continue without login",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _validate() {
    final form = _formKey.currentState;

    if (!form!.validate()) {
      return;
    }

    final number = numberController.text;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => EnterCode(phoneNumber: number)),
    );
  }
}

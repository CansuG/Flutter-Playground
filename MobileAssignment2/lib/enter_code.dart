import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_assignment_2/welcome_user.dart';

class EnterCode extends StatefulWidget {
  String phoneNumber;

  EnterCode({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<EnterCode> createState() => EnterCodeState();
}

class EnterCodeState extends State<EnterCode> {
  @override
  EnterCode get widget => super.widget;

  final _codeController = TextEditingController();
  var codeLength = 0;
  int seconds = 20;
  Timer? timer;
  bool isTicking = true;

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
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Please enter the verification code sent to your mobile phone number with ${widget.phoneNumber}'),
              SizedBox(height: 20),
              Icon(
                Icons.timer_outlined,
                color: Colors.black,
              ),
              Text('$seconds'),
              SizedBox(height: 20),
              TextFormField(
                controller: _codeController,
                maxLength: 6,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'SMS Code',
                ),
                onChanged: _onChanged,
              ),
              SizedBox(
                height: 20,
              ),
              isTicking
                  ? ElevatedButton(
                      child: Text('Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(((codeLength == 6) ? Colors.black : Colors.grey)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.only(left: 25, right: 25)),
                      ),
                      onPressed: _validate,
                    )
                  : ElevatedButton(
                      child: Text('Resend',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all((Colors.grey)),
                      ),
                      onPressed: _restartTimer,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer timer) {
    setState(() {
      seconds--;
    });

    if (seconds == 0) {
      timer?.cancel();
      isTicking = false;
    }
  }

  void _restartTimer() {
    seconds = 20;
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = true;
    });
  }

  void _onChanged(String value) {
    setState(() {
      codeLength = value.length;
    });
  }

  void _validate() {
    if (codeLength == 6) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeUser()),
      );
    }
  }
}

import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
            child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Sorry!\n",
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
              TextSpan(
                text: 'An error occured',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

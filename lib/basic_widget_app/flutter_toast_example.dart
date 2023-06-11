import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastExample extends StatefulWidget {
  const FlutterToastExample({super.key});

  @override
  State<FlutterToastExample> createState() => _FlutterToastExampleState();
}

class _FlutterToastExampleState extends State<FlutterToastExample> {
  void _sendEmail(bool sent) {
    sent
        ? Fluttertoast.showToast(
            msg: 'Email Sent Success',
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 2,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white)
        : Fluttertoast.showToast(
            msg: 'Error Email Failed ',
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 2,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _sendEmail(true);
          },
          color: Colors.red,
          textColor: Colors.white,
          child: const Text("Send email"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastpage extends StatelessWidget {
  const Toastpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'congaragulation',
                  backgroundColor: Colors.amberAccent,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Text('show toast')),
      ),
    );
  }
}

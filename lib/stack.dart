import 'package:flutter/material.dart';
import 'package:tasks/toast.dart';

class Stackpage extends StatelessWidget {
  const Stackpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 390,
              width: 390,
              decoration: BoxDecoration(color: Colors.amberAccent),
            ),
          ),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Toastpage(),
        ));
      }),
    );
  }
}

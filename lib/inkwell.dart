import 'package:flutter/material.dart';

class Inkwell extends StatefulWidget {
  const Inkwell({super.key});

  @override
  State<Inkwell> createState() => _InkwellState();
}

class _InkwellState extends State<Inkwell> {
  double side = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: side,
            width: side,
            decoration: BoxDecoration(color: Colors.amber),
            child: InkWell(
              onTap: () {
                setState(() {
                  side == 200 ? side = 300 : side = 200;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Inkwellbulb extends StatefulWidget {
  const Inkwellbulb({super.key});

  @override
  State<Inkwellbulb> createState() => _InkwellbulbState();
}

class _InkwellbulbState extends State<Inkwellbulb> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 50,
                  color: _isOn ? Colors.amber : Colors.black26,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: InkWell(
                      child: Text(
                        _isOn ? 'light off' : 'light on',
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        setState(() {
                          _isOn = !_isOn;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Alertboxpage extends StatelessWidget {
  const Alertboxpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert diolog box'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('alert diolog box '),
                  content: Text('alert box'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('ok'),
                    ),
                  ],
                ),
              );
            },
            child: Text('show diolog')),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottomsheet'),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 200,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.photo_album),
                                title: Text('photos'),
                              ),
                              ListTile(
                                leading: Icon(Icons.contact_emergency),
                                title: Text('contact'),
                              )
                            ],
                          ),
                        ));
              },
              child: Text('bottomsheet'));
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks/stack.dart';

class Flexpage extends StatelessWidget {
  const Flexpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Container(
                          height: 200,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 180,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 180,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Stackpage(),
        ));
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tasks/Rail.dart';
import 'package:tasks/alertbox.dart';
import 'package:tasks/bottomnavi.dart';
import 'package:tasks/bottomsheet.dart';
import 'package:tasks/flex.dart';
import 'package:tasks/inkwell.dart';
import 'package:tasks/inkwellbulb.dart';
import 'package:tasks/music.dart';
import 'package:tasks/popup.dart';
import 'package:tasks/sleep.dart';
import 'package:tasks/stack.dart';
import 'package:tasks/taskpage.dart';
import 'package:tasks/toast.dart';
import 'package:tasks/trello2.dart';
import 'package:tasks/trello3.dart';
import 'package:tasks/trello4.dart';
import 'package:tasks/trllotask.dart';
import 'package:tasks/watch.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Flexpage(),
                    ));
                  },
                  child: Text('flex')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Bottom(),
                    ));
                  },
                  child: Text('bottom')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Alertboxpage(),
                    ));
                  },
                  child: Text('alert')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Toastpage(),
                    ));
                  },
                  child: Text('Toast')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Stackpage(),
                    ));
                  },
                  child: Text('stack')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Bottomsheet(),
                    ));
                  },
                  child: Text('bottomsheet')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Inkwell(),
                    ));
                  },
                  child: Text('inkwell')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Inkwellbulb(),
                    ));
                  },
                  child: Text('inkwell')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Popup(),
                    ));
                  },
                  child: Text('popup')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mountain(),
                    ));
                  },
                  child: Text('Mountain')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Trello2(),
                    ));
                  },
                  child: Text('TASK2')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Page2(),
                    ));
                  },
                  child: Text('TASK2')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Amazon(),
                    ));
                  },
                  child: Text('TASK2')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Discover(),
                    ));
                  },
                  child: Text('discover')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Sleep(),
                    ));
                  },
                  child: Text('sleep')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Music(),
                    ));
                  },
                  child: Text('music')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Rail(),
                    ));
                  },
                  child: Text('rail')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Watch(),
                    ));
                  },
                  child: Text('watch')),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-05-03 at 12.32.47 PM.jpeg'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Businuss Types',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.car_crash_outlined,
                          size: 40,
                        ),
                        Text(
                          'Cars',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.list_alt_outlined,
                          size: 50,
                        ),
                        Text(
                          'Properties',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.mobile_friendly,
                          size: 40,
                        ),
                        Text(
                          'Mobiles',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.girl,
                          size: 50,
                        ),
                        Text(
                          'Fasion',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.pedal_bike_outlined,
                          size: 40,
                        ),
                        Text(
                          'Bike',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Icon(
                          Icons.watch,
                          size: 50,
                        ),
                        Text(
                          'Watches',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.snowshoeing_outlined,
                          size: 40,
                        ),
                        Text(
                          'Shoe',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Icon(
                          Icons.menu_rounded,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ])));
  }
}

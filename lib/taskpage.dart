import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/mountain.jpg'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.arrow_back_ios))),
                          Spacer(),
                          CircleAvatar(
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Card(
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Andes Mountain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  'price',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'south America',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  '230',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('details')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Icon(Icons.access_time_filled_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text('8 hours'),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.cloud),
                  SizedBox(
                    width: 5,
                  ),
                  Text('16 C'),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.star),
                  SizedBox(
                    width: 5,
                  ),
                  Text('4.5'),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                    'as part of our tour of Peru we visited several locations in the Andes and I would recommend it to anyone of course this is an overall review of the area and not of any one particular destination the scenery is spectacular a beautiful place to visit and see I can only speak for tourists from the but there are several operators  which do visit this area and I am sure the same can be said from other departure point I would say one thing it is possible you could suffer from altitude sickness in this location so I would seek advice on the various precautions that are available prior to traveling  Me and my friends visited Machu Pichhu on last December and the trip was awesome. Its just because of Best Andes Travel . They helped us with all the arrangements and guide us all the way. I would recommend everyone to go with Best Andes Travel if you want to make your trip memorable'),
              ),
            ),
            Positioned(
                child: Container(
              height: 50,
              width: 400,
              child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book now',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                      )
                    ],
                  )),
            ))
          ],
        ),
      ),
    );
  }
}

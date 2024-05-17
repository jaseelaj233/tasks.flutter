import 'package:flutter/material.dart';
import 'package:tasks/taskpage.dart';

class Trello2 extends StatefulWidget {
  const Trello2({super.key});

  @override
  State<Trello2> createState() => _Trello2State();
}

class _Trello2State extends State<Trello2> {
  bool isTap1 = false;
  bool isTap2 = false;
  bool isTap3 = false;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Hello David',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waving_hand_sharp,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/trivior.jpg'),
                  ),
                ],
              ),
              const Text(
                'Explor the World',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'search places', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Popular Places',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap1 = !isTap1;
                          isTap2 = false;
                          isTap3 = false;
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              isTap1 == true ? Colors.black : Colors.grey),
                      child: const Text('most viewed')),
                  const SizedBox(
                    width: 90,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap2 = !isTap2;
                          isTap1 = false;
                          isTap3 = false;
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              isTap2 == true ? Colors.black : Colors.grey),
                      child: const Text('nearby')),
                  const SizedBox(
                    width: 90,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap3 = !isTap3;
                          isTap2 = false;
                          isTap1 = false;
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              isTap3 == true ? Colors.black : Colors.grey),
                      child: const Text('latest')),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Page2(),
                            ));
                          },
                          child: Container(
                            height: 300,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('assets/mountain.jpg'),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        child: InkWell(
                                          onDoubleTap: () {
                                            setState(() {
                                              isLike = !isLike;
                                            });
                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            color: isLike == false
                                                ? Colors.white
                                                : Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Card(
                                    color: Colors.grey,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Morest, Tokyo',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'tokyo,japan',
                                              style: TextStyle(fontSize: 7),
                                            ),
                                            Spacer(),
                                            Icon(
                                              Icons.star_border_outlined,
                                              color: Colors.yellow,
                                              size: 10,
                                            ),
                                            Text(
                                              '4.8',
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                      itemCount: 5),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                tooltip: 'home', label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              tooltip: 'time',
              label: 'time',
              icon: Icon(Icons.lock_clock),
            ),
            BottomNavigationBarItem(
                tooltip: 'fevarout',
                label: 'favourite',
                icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                tooltip: 'people', label: 'accound', icon: Icon(Icons.people)),
          ],
        ));
  }
}

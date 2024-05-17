import 'package:flutter/material.dart';
import 'package:tasks/inkwell.dart';
import 'package:tasks/sleep.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int currentIndex = 0;
  List buttons = ['insomania', 'badsleep', 'depression', 'goodsleep', 'heart'];
  List<Map<String, dynamic>> colour = [
    {
      "image": "assets/VILOET2.jpg",
      "name": "Sleep Meditation",
      "name2": "7 days of series",
    },
    {
      "image": "assets/yeelo.jpg",
      "name": "insomania",
      "name2": "8 days of series",
    },
    {
      "image": "assets/grreen2.jpg",
      "name": "bad sleep",
      "name2": "12 days of series",
    },
    {
      "image": "assets/orenge.jpg",
      "name": "good sleep",
      "name2": "12 days of series",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Discover',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? Colors.blue
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: Text(buttons[index])),
                          ),
                        );
                        // return Container(
                        //   height: 100,
                        //   width: 100,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: TextButton(
                        //     style: TextButton.styleFrom(
                        //         backgroundColor: Colors.grey),
                        //     onPressed: () {},
                        //     child: Text(buttons[index]),
                        //   ),
                        // );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemCount: 5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'recommended',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      'see all',
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 200,
              //   child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           height: 100,
              //           width: 450,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Image(
              //                   height: 100,
              //                   width: 450,
              //                   image: AssetImage(container[index]['Image']))
              //             ],
              //           ),
              //         );
              //       },
              //       separatorBuilder: (context, index) => SizedBox(
              //             width: 10,
              //           ),
              //       itemCount: 2),
              // )
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Sleep(),
                            ));
                          },
                          child: Container(
                            height: 100,
                            width: 450,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(colour[index]["image"]),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    colour[index]["name"],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    colour[index]["name2"],
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.queue_music_sharp,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.color_lens_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemCount: 5),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'recent',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //         height: 100,
              //         width: 200,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadiusDirectional.circular(30.0),
              //             image: const DecorationImage(
              //                 image: AssetImage('assets/orenge.jpg'),
              //                 fit: BoxFit.cover)),
              //         child: const Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.all(8.0),
              //               child: Text(
              //                 'calming ',
              //                 style: TextStyle(
              //                     fontSize: 15,
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.all(6.0),
              //               child: Text(
              //                 'sounds ',
              //                 style: TextStyle(
              //                     fontSize: 14,
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.all(3.0),
              //               child: Icon(
              //                 Icons.music_note,
              //                 color: Colors.white,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       height: 100,
              //       width: 200,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadiusDirectional.circular(30.0),
              //           image: const DecorationImage(
              //               image: AssetImage('assets/yeelo.jpg'),
              //               fit: BoxFit.cover)),
              //       child: const Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'insomania',
              //               style: TextStyle(
              //                   fontSize: 20,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white),
              //             ),
              //             Spacer(),
              //             Icon(
              //               Icons.color_lens_rounded,
              //               color: Colors.white,
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //         height: 100,
              //         width: 200,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadiusDirectional.circular(30.0),
              //             image: const DecorationImage(
              //                 image: AssetImage('assets/grreen2.jpg'),
              //                 fit: BoxFit.cover)),
              //         child: const Padding(
              //           padding: EdgeInsets.all(8.0),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'for',
              //                 style: TextStyle(
              //                     fontSize: 15,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //               Text(
              //                 'children',
              //                 style: TextStyle(
              //                     fontSize: 15,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Container(
              //       height: 100,
              //       width: 200,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadiusDirectional.circular(30.0),
              //           image: const DecorationImage(
              //               image: AssetImage('assets/VILOET2.jpg'),
              //               fit: BoxFit.cover)),
              //       child: const Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'tips for',
              //               style: TextStyle(
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white),
              //             ),
              //             Text(
              //               'sleeping',
              //               style: TextStyle(
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/orenge.jpg'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Calming',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'sound',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.music_note_rounded)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/grreen2.jpg'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'insomania',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(Icons.color_lens_rounded)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/yeelo.jpg'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tips for',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'sleeping',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.music_note_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/VILOET2.jpg'),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'for',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'children',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
                tooltip: 'music', label: 'music', icon: Icon(Icons.music_note)),
            const BottomNavigationBarItem(
              tooltip: 'bar',
              label: 'bar',
              icon: Icon(
                Icons.bar_chart,
                color: Colors.blue,
              ),
            ),
            const BottomNavigationBarItem(
                tooltip: 'accound',
                label: 'accound',
                icon: Icon(
                  Icons.people,
                  color: Colors.blue,
                )),
          ],
        ));
  }
}

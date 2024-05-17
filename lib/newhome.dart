import 'package:flutter/material.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  List<Map<String, dynamic>> products = [
    {
      "image": 'assets/dress.jpg',
      "product name": "teshirt",
      "price": "\$50",
      "offer": "30%",
    },
    {
      "image": 'assets/sho.jpg',
      "product name": "shoe",
      "price": "\$30",
      "offer": "50%",
    },
    {
      "image": 'assets/watches1.jpg',
      "product name": "watch",
      "price": "\$70",
      "offer": "40%",
    },
    {
      "image": 'assets/phone.jpg',
      "product name": "realme",
      "price": "\$170",
      "offer": "40%",
    },
    {
      "image": 'assets/bag2.jpg',
      "product name": "bag",
      "price": "\$90",
      "offer": "40%",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: SearchAnchor.bar(
          barBackgroundColor: MaterialStatePropertyAll(Colors.white),
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<Widget>.generate(
              5,
              (int index) {
                return ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text('search $index'),
                );
              },
            );
          },
        ),
        actions: const [
          Icon(
            Icons.favorite_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.article,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Image(
                    height: 80,
                    width: 200,
                    image: AssetImage('assets/gold.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Image(
                    height: 80,
                    width: 200,
                    image: AssetImage('assets/bag.jpg'),
                    fit: BoxFit.cover,
                  ),

                  // Container(
                  //   height: 200,
                  //   width: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage('assets/gold.jpg'),
                  //           fit: BoxFit.cover)),
                  // ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 200,
                  //     width: 200,
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage('assets/bag.jpg'),
                  //             fit: BoxFit.cover)),
                  //   ),
                  // )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Image(
                    height: 80,
                    width: 200,
                    image: AssetImage('assets/burger.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Image(
                    height: 80,
                    width: 200,
                    image: AssetImage('assets/jeep.jpg'),
                    fit: BoxFit.cover,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Special for you',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'more',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 5.0),
                                blurRadius: 5.0,
                                spreadRadius: 4.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 5.0,
                                spreadRadius: 0.0),
                            // BoxShadow(
                            //     color: Colors.grey,
                            //     offset: Offset(1.0, 15.0),
                            //     blurRadius: 0.0,
                            //     spreadRadius: 2.0),
                            // BoxShadow(
                            //     color: Colors.grey,
                            //     offset: Offset(2.0, 0.0),
                            //     blurRadius: 0.0,
                            //     spreadRadius: 0.0),
                          ]),
                          width: 100,
                          child: Column(
                            children: [
                              Image(
                                  height: 100,
                                  image: AssetImage(
                                    products[index]['image'],
                                  )),
                              Text(
                                products[index]['product name'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                products[index]['offer'],
                              ),
                              Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.red,
                                  child: Text(products[index]['price']))
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 7,
                          ),
                      itemCount: 5),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'our best sellers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'more',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'bought buy many people ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 200,
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                      height: 100,
                                      image:
                                          AssetImage(products[index]['image'])),
                                  Text(
                                    products[index]['product name'],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    products[index]['offer'],
                                  ),
                                  Text(products[index]['price'])
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                width: 7,
                              ),
                          itemCount: 5),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

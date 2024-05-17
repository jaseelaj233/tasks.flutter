import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  int cartitems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('smartwatch'),
        actions: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
            Positioned(
                top: 0,
                right: 3,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  minRadius: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      '$cartitems',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ))
          ]),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.share_rounded)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/swatch.jpg'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 245, 245)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$700.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.favorite_border_outlined)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(color: Colors.red),
                                child: Center(child: Text('save 12%')),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '\$000.00',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 235, 235, 235)),
                              )
                            ],
                          ),
                          Text(
                            'SmartWatch',
                          ),
                          Row(
                            children: [
                              Text('solid 0 |'),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text('0.00(0)')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 245, 245)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                              'This product is the heighes quality product currently only availble for dema purpose it is the very rare produxt in this watch is very beautyful For example, BoAt Storm Smartwatch has a battery life of up to 5 days, while the Noise ColorFit Pro 2 Smartwatch has a battery life of up to 3 days. Noise smartwatches have more features than BoAt smartwatches, such as menstrual cycle tracking, G-sensor, and IP68 waterproof rating31.rono watch is very beautifull and very expencive i  the worls the smart watch is very rare in the worls deffrent rype is yuo kari set the progran and app call and bkuthoot settings yj tha ewatch'),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
              child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (cartitems < 10) {
                          cartitems++;
                        } else {
                          Fluttertoast.showToast(msg: 'too many items');
                        }
                      });
                    },
                    child: Text('+ add to cart')),
              ),
              SizedBox(
                width: 250,
              ),
              Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: TextButton(onPressed: () {}, child: Text('buy now')))
            ],
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
        ),
        backgroundColor: Colors.red,
        shape: CircleBorder(),
      ),
    );
  }
}

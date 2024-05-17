import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
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
    int selectedItem = 0;
    List catogery = [
      'Populer categories',
      'Cosmetics',
      'fasion&types',
      'electronics',
      'mobiles',
      'groseries',
      'jwellery'
    ];
    NavigationRailLabelType labelType = NavigationRailLabelType.all;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchAnchor.bar(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NavigationRail(
                    onDestinationSelected: (index) {
                      setState(() {
                        selectedItem = index;
                      });
                    },
                    labelType: labelType,
                    destinations: [
                      NavigationRailDestination(
                          icon: Icon(Icons.fireplace_outlined),
                          label: Text('popular catagories')),
                      NavigationRailDestination(
                          icon: Icon(Icons.balcony_rounded),
                          label: Text('Cosmetics')),
                      NavigationRailDestination(
                          icon: Icon(Icons.girl), label: Text('fasion&toys')),
                      NavigationRailDestination(
                          icon: Icon(Icons.iron), label: Text('Electronics')),
                      NavigationRailDestination(
                          icon: Icon(Icons.mobile_friendly_rounded),
                          label: Text('Mobile')),
                      NavigationRailDestination(
                          icon: Icon(Icons.local_grocery_store_sharp),
                          label: Text('grosery')),
                      NavigationRailDestination(
                          icon: Icon(Icons.diamond_rounded),
                          label: Text('jwellery')),
                    ],
                    selectedIndex: selectedItem,
                  ),
                  VerticalDivider(),
                  SizedBox(
                    height: 700,
                    width: 300,
                    child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  3.0,
                                  10.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 4.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            products[index]['image']))),
                              ),
                              Text(
                                products[index]['product name'],
                              ),
                              Text(products[index]['offer']),
                              Text(products[index]['price'])
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

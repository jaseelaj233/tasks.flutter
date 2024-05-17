import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tasks/newhome.dart';
import 'package:tasks/trelloecn.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<Amazon> createState() => _amazonState();
}

class _amazonState extends State<Amazon> {
  List bottomnames = ['home', 'blog', 'category', 'cart', 'account'];
  List<Widget> route = [
    NewHome(),
    Text('blog'),
    Products(),
    Text('cart'),
    Text('account'),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: route[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                tooltip: 'home', label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              tooltip: 'blog',
              label: 'blog',
              icon: Icon(Icons.book),
            ),
            BottomNavigationBarItem(
                tooltip: 'catogery',
                label: 'category',
                icon: Icon(Icons.category)),
            BottomNavigationBarItem(
              tooltip: 'cart',
              label: 'cart',
              icon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              tooltip: 'accound',
              label: 'accound',
              icon: Icon(Icons.people),
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}

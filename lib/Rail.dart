import 'package:flutter/material.dart';

class Rail extends StatefulWidget {
  const Rail({super.key});

  @override
  State<Rail> createState() => _RailState();
}

class _RailState extends State<Rail> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.favorite_outline), label: Text('Favourite')),
            NavigationRailDestination(
                icon: Icon(Icons.save), label: Text('save')),
            NavigationRailDestination(
                icon: Icon(Icons.notification_add),
                label: Text('notification')),
          ], selectedIndex: selectedindex)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({super.key});

  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> items = [
    "apple",
    "banana",
    "orange",
    "mango",
    "yasmin",
  ];
  List<String> filterdItem = [];

  @override
  void initstate() {
    super.initState();
    filterdItem.addAll(items);
  }

  void filterItems(String query) {
    query = query.toLowerCase();
    setState(() {
      filterdItem =
          items.where((item) => item.toLowerCase().contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            filterItems(value);
          },
          decoration: InputDecoration(
              hintText: 'search',
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search)),
        ),
      ),
      body: ListView.builder(
        itemCount: filterdItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filterdItem[index]),
          );
        },
      ),
    );
  }
}

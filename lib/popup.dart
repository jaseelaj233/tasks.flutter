import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  List pages = ['text1', 'text2', 'text 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          onSelected: <int>(index) {
            print(pages[index].toString());
          },
          itemBuilder: (context) {
            return List.generate(pages.length,
                (index) => PopupMenuItem(child: Text(pages[index].toString())));
          },
        ),
      ),
    );
  }
}

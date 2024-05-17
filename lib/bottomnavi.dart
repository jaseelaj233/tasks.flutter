import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   backgroundColor: Colors.lightBlue,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
      //             CircleAvatar(
      //               backgroundColor: Colors.white,
      //             ),
      //             SizedBox(
      //               width: 20,
      //             ),
      //             Text(
      //               'JASEELA',
      //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //             )
      //           ],
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [Text('Flutter Developer')],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Text('JJ'),
                      backgroundColor: Colors.amberAccent,
                    ),
                    Spacer(),
                    Icon(Icons.light_mode_sharp),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jaseela Jasi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Flutter Developer'),
                Text('+91 7560981322'),
                // Spacer(),
                // Icon(Icons.arrow_back),
                ListTile(
                  leading: Icon(Icons.group_add),
                  title: Text('new group'),
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('people'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('settings'),
                ),
                ListTile(
                  leading: Icon(Icons.phone_callback_outlined),
                  title: Text('call'),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('bottom navigtion bar'),
        backgroundColor: Colors.amber,
      ),
      body: [
        Center(
          child: Builder(
            builder: (context) {
              return TextButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) =>
                          Container(height: 200, color: Colors.black26),
                    );
                  },
                  child: const Text('home'));
            },
          ),
        ),
        const Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.notification_add),
                title: Text('notification'),
                subtitle: Text('hello'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.notification_add),
                title: Text('notifiation 2'),
                subtitle: Text('hii'),
              ),
            )
          ],
        ),
        ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('hello'),
                ),
              );
            }
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('hii'),
              ),
            );
          },
        ),
      ][selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              tooltip: 'home', label: 'Home', icon: Icon(Icons.home)),
          const BottomNavigationBarItem(
            tooltip: 'notification',
            label: 'notification',
            icon: Icon(Icons.notification_add),
          ),
          const BottomNavigationBarItem(
              tooltip: 'message', label: 'message', icon: Icon(Icons.message)),
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amberAccent,
      ),
    );
  }
}

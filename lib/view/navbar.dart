import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Navbar> {
  int indexnum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App bar
        appBar: AppBar(
            title: Text("Fitness App"),
            centerTitle: true,
            //bg color
            backgroundColor: Colors.blue[300],

            //leading
            leading: Icon(Icons.fitness_center),

            //Actions
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.zero))

            //elevation
            //elevation: 10,
            ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: "workout",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.compass_calibration),
                label: "discover",
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.black)
          ],
          currentIndex: indexnum,
          iconSize: 18,
          selectedFontSize: 19,
          showSelectedLabels: true,
          onTap: (int index) {
            setState(() {
              indexnum = index;
            });
          },
        ),
        body: null);
  }
}

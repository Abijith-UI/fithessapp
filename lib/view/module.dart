import 'package:flutter/material.dart';

class Module extends StatefulWidget {
  const Module({super.key});

  @override
  State<Module> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
          title: Text("Fitness App"),
          centerTitle: true,
          //bg color
          backgroundColor: Color.fromARGB(255, 175, 5, 242),

          //leading
          // leading: Icon(Icons.fitness_center),

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

      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      // ]),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/4230990.jpg"),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              iconColor: Colors.purple,
              title: Text(
                "Dashboard",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              textColor: Colors.purple,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              iconColor: Colors.purple,
              title: Text(
                "Users",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              textColor: Colors.purple,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.sports_gymnastics_rounded),
              iconColor: Colors.purple,
              title: Text(
                "Exercises",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              textColor: Colors.purple,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              iconColor: Colors.purple,
              title: Text(
                "Schedules",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              textColor: Colors.purple,
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              iconColor: Colors.purple,
              title: Text(
                "Diet",
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              textColor: Colors.purple,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

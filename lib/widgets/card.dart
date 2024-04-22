import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

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
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)))

            //elevation
            //elevation: 10,
            ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.yellow,
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("fitness"),
                      subtitle: Text("workout"),
                      textColor: Colors.yellow,
                      leading: Icon(Icons.sports_gymnastics),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Diet"),
                      subtitle: Text("Plans"),
                      textColor: Colors.black,
                      leading: Icon(Icons.food_bank),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Cardio"),
                      subtitle: Text("time"),
                      textColor: Colors.black,
                      leading: Icon(Icons.cyclone),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.yellow,
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("fitness"),
                      subtitle: Text("workout"),
                      textColor: Colors.yellow,
                      leading: Icon(Icons.sports_gymnastics),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Diet"),
                      subtitle: Text("Plans"),
                      textColor: Colors.black,
                      leading: Icon(Icons.food_bank),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Cardio"),
                      subtitle: Text("time"),
                      textColor: Colors.black,
                      leading: Icon(Icons.cyclone),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.yellow,
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("fitness"),
                      subtitle: Text("workout"),
                      textColor: Colors.yellow,
                      leading: Icon(Icons.sports_gymnastics),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Diet"),
                      subtitle: Text("Plans"),
                      textColor: Colors.black,
                      leading: Icon(Icons.food_bank),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Cardio"),
                      subtitle: Text("time"),
                      textColor: Colors.black,
                      leading: Icon(Icons.cyclone),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.yellow,
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("fitness"),
                      subtitle: Text("workout"),
                      textColor: Colors.yellow,
                      leading: Icon(Icons.sports_gymnastics),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Diet"),
                      subtitle: Text("Plans"),
                      textColor: Colors.black,
                      leading: Icon(Icons.food_bank),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Cardio"),
                      subtitle: Text("time"),
                      textColor: Colors.black,
                      leading: Icon(Icons.cyclone),
                      iconColor: Colors.red,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

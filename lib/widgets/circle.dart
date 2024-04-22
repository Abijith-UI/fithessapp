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
        body: Center(
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.purple,
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 40),
                    ),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.verified_user,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/4230990.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/3231246.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/4230990.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          'https://theglobalcoverage.com/wp-content/uploads/2021/07/Solo-Levelling-.jpg')),
                ),
              ),
            ],
          ),
        ));
  }
}

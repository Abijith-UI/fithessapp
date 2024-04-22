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
          child: Text(
            "Fitness",
            style: TextStyle(
                fontSize: 40,
                color: Colors.purple,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                letterSpacing: 10,
                backgroundColor: Colors.yellow,
                shadows: const [
                  Shadow(
                      color: Colors.blue, offset: Offset(5, 5), blurRadius: 5)
                ]),
          ),
        ));
  }
}

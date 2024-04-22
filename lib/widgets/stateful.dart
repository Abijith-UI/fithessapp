import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var clktext = "Lets workout";
  var iconclk = Colors.blue;
  var iconclkdw = Colors.blue;

  void changetxt() {
    setState(() {
      clktext = "Workout started";
    });
  }

  void changetxt2() {
    setState(() {
      clktext = "Workout started again";
    });
  }

  void changeclrlike() {
    setState(() {
      if (iconclk == Colors.blue) {
        iconclk = Colors.green;
      } else {
        iconclk = Colors.blue;
      }
    });
  }

  void changeclrdislike() {
    setState(() {
      if (iconclkdw == Colors.blue) {
        iconclkdw = Colors.red;
      } else {
        iconclkdw = Colors.blue;
      }
    });
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                clktext,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    changetxt();
                  },
                  child: Text(
                    "workout",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  )),
              ElevatedButton(
                  onPressed: () {
                    changetxt2();
                  },
                  child: Text(
                    "workout click",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      changeclrlike();
                    },
                    icon: Icon(Icons.thumb_up),
                    iconSize: 30,
                    color: iconclk,
                  ),
                  IconButton(
                    onPressed: () {
                      changeclrdislike();
                    },
                    icon: Icon(Icons.thumb_down),
                    iconSize: 30,
                    color: iconclkdw,
                  )
                ],
              )
            ],
          ),
        ));
  }
}

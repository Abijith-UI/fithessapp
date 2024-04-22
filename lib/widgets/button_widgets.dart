import 'dart:developer';

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

            // elevation: 10,
            ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30)),
                      foregroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    log("clicked");
                  },
                  child: Text("text button")),
              TextButton.icon(
                style: ButtonStyle(
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 30)),
                    foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  log("clicked");
                },
                onLongPress: () {
                  log("long pressed");
                },
                icon: Icon(Icons.home_repair_service),
                label: Text("Home"),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 90,
                        right: 90,
                        top: 10,
                        bottom: 10,
                      )),
                      foregroundColor: MaterialStateProperty.all(Colors.yellow),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      // minimumSize: MaterialStateProperty.all(Size(40, 40)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 20,
                      ))),
                  onPressed: () {
                    log("Clicked");
                  },
                  onLongPress: () {
                    log("long pressed");
                  },
                  child: Text("sign in")),
              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.black, width: 3)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30)),
                      minimumSize: MaterialStateProperty.all(Size(200, 20)),
                      foregroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  onPressed: () {},
                  child: Text("Sign in"))
            ],
          ),
        ));
  }
}

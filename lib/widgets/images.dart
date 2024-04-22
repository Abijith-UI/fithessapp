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
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Image.asset(
                  'images/4230932.png',
                  height: 300,
                  width: 300,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Image.asset(
                  'images/4230990.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Image.network(
                    'https://i.pinimg.com/originals/71/2a/07/712a0710a1bf02cea73acd6e5142acae.png'),
                height: 200,
                width: 200,
              )
            ],
          ),
        ));
  }
}

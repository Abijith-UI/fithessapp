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
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shadowColor: Colors.yellow,
                elevation: 8,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Naruto"),
                      subtitle: Text("20 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/4230990.jpg'),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(title: Text("i am going...to be hokage...")),
                    Image.asset('images/3231246.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.thumb_up)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.thumb_down)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shadowColor: Colors.red,
                elevation: 6,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Sung jin woo"),
                      subtitle: Text("10 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/4230932.png'),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(title: Text("i am going...to be hokage...")),
                    Image.asset('images/4230932.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.thumb_up)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.thumb_down)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

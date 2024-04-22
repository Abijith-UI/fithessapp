import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? checked = false;
  bool? checked2 = false;
  bool? checked3 = false;
  bool? checked4 = false;
  bool? checked5 = false;

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
              Checkbox(
                  tristate: true,
                  activeColor: Colors.red,
                  checkColor: Colors.blue,
                  value: checked,
                  onChanged: (val) {
                    setState(() {
                      checked = val;
                    });
                  }),
              Checkbox(
                  tristate: true,
                  activeColor: Colors.yellow,
                  checkColor: Colors.blue,
                  value: checked2,
                  onChanged: (val) {
                    setState(() {
                      checked2 = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    activeColor: Colors.orange,
                    checkColor: Colors.black,
                    title: Text(
                      "Are you worked out",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: Text(
                      "Yes or No",
                      style: TextStyle(color: Colors.red),
                    ),
                    tileColor: Colors.blue,
                    value: checked3,
                    onChanged: (val) {
                      setState(() {
                        checked3 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    tristate: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    activeColor: Colors.orange,
                    checkColor: Colors.black,
                    title: Text(
                      "Are you worked out",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: Text(
                      "Yes or No",
                      style: TextStyle(color: Colors.red),
                    ),
                    tileColor: Colors.purple,
                    value: checked4,
                    onChanged: (val) {
                      setState(() {
                        checked4 = val;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    tristate: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    activeColor: Colors.orange,
                    checkColor: Colors.black,
                    title: Text(
                      "Are you worked out",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    subtitle: Text(
                      "Yes or No",
                      style: TextStyle(color: Colors.black),
                    ),
                    tileColor: Colors.amber,
                    value: checked5,
                    onChanged: (val) {
                      setState(() {
                        checked5 = val;
                      });
                    }),
              )
            ],
          ),
        ));
  }
}

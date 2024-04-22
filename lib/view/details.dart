import 'package:flutter/material.dart';

import 'package:flutter_fitness_1/view/home.dart';

class Details extends StatefulWidget {
  String Name;
  String Email;
  String confirm_password;

  Details(
      {required this.Name,
      required this.Email,
      required this.confirm_password});

  @override
  State<Details> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Details> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    final val = widget.confirm_password;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //App bar
        // appBar: AppBar(
        //     title: Text("Fitness App"),
        //     centerTitle: true,
        //     //bg color
        //     backgroundColor: Colors.blue[300],

        //     //leading
        //     leading: Icon(Icons.fitness_center),

        //     //Actions
        //     actions: [
        //       IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        //       IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        //     ],
        //     shape: RoundedRectangleBorder(
        //         borderRadius:
        //             BorderRadius.vertical(bottom: Radius.circular(30)))

        //     //elevation
        //     //elevation: 10,
        //     ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                // TextField(
                //   decoration: InputDecoration(
                //       labelText: "Name",
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(30)),
                //       // hintText: "Enter your Username",
                //       prefixIcon: Icon(Icons.account_box),
                //       labelStyle: TextStyle(color: Colors.black)),
                // ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Age",
                      // hintText: "Password",
                      prefixIcon: Icon(Icons.air),
                      // helperText: "Password must be 6 character or more",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Height",
                      // hintText: "Password",
                      prefixIcon: Icon(Icons.height),
                      helperText: "Height in cm",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Weight",
                      // hintText: "Password",
                      prefixIcon: Icon(Icons.monitor_weight),
                      helperText: "Weight in kg",
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 3, 195, 243)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(30, 50))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
                    key: onPressed,
                    child: const Text(
                      "Add details",
                    )),
              ],
            ),
          ),
        ));
  }
}

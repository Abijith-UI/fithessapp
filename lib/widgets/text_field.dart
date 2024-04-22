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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter your user name",
                    prefixIcon: Icon(Icons.verified_user),
                    suffixIcon: Icon(Icons.verified),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your user name",
                      helperText: "Enter username or email",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.purple,
                      ),
                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontStyle: FontStyle.italic)),
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Password"),
                  maxLength: 10,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 4),
                      ),
                      label: Text("User Name")),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

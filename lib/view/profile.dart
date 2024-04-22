import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/helper/hive_helper.dart';
import 'package:flutter_fitness_1/model/user_model.dart';
import 'package:flutter_fitness_1/repository/auth_repository.dart';
import 'package:flutter_fitness_1/view/editprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  bool isloading = false;
  final _auth = AuthRepository();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  UserInfo? user;

  void fetchData() async {
    isloading = true;
    final userId = await Hivehelper.getlogginedUserId();
    final resp = await _auth.getProfile(userId);
    if (resp.status == 200) {
      setState(() {
        user = resp.data.first;
        isloading = false;
      });
    } else {
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        //App bar

        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                          backgroundImage: AssetImage('images/4230990.jpg')),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                user?.ftUdName ?? "",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                user?.ftUdgmail ?? "",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Editprofile(),
                      ));
                },
                child: Text("Edit Profile"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 26, 27, 26)),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 111, 59)),
                ),
              )
            ],
          ),
        ));
  }
}

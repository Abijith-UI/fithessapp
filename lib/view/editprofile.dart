import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/helper/hive_helper.dart';
import 'package:flutter_fitness_1/model/user_model.dart';
import 'package:flutter_fitness_1/repository/auth_repository.dart';
import 'package:flutter_fitness_1/view/home.dart';
import 'package:flutter_fitness_1/view/profile.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Editprofile> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _gmailController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
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
        // assign value to text field
        _usernameController.text = user?.ftUdName ?? "";
        _gmailController.text = user?.ftUdgmail ?? "";
        _ageController.text = user?.ftUdAge ?? "";
        _heightController.text = user?.ftUdHeight ?? "";
        _weightController.text = user?.ftUdWeight ?? "";
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
        //App bar
        appBar: AppBar(
          title: Text("Edit Profile"),
          centerTitle: true,
          //bg color
          backgroundColor: Color.fromARGB(255, 229, 100, 246),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),

          //leading
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/gym2.jpg'),
                            )),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Color.fromARGB(255, 235, 230, 236)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 102, 47, 107),
                              fontSize: 20),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _gmailController,
                      decoration: InputDecoration(
                        label: Text(
                          "Gmail",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 102, 47, 107),
                              fontSize: 20),
                        ),
                        prefixIcon: Icon(
                          Icons.report_gmailerrorred,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _ageController,
                      decoration: InputDecoration(
                        label: Text(
                          "Age",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 102, 47, 107),
                              fontSize: 20),
                        ),
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _heightController,
                      decoration: InputDecoration(
                        label: Text(
                          "Height",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 92, 40, 89),
                              fontSize: 20),
                        ),
                        prefixIcon: Icon(
                          Icons.height,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _weightController,
                      decoration: InputDecoration(
                        label: Text(
                          "weight",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 102, 47, 107),
                              fontSize: 20),
                        ),
                        prefixIcon: Icon(
                          Icons.line_weight,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 15, 14, 14),
                              fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

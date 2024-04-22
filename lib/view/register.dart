import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/helper/hive_helper.dart';
import 'package:flutter_fitness_1/repository/auth_repository.dart';
import 'package:flutter_fitness_1/view/login.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'details.dart';
import 'register.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
  bool isLoading = false;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _gmailController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, //to avoid bottom pixel overflowed
        //App bar

        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 195, 66, 238),
                  Color.fromARGB(255, 163, 153, 170),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 40.0, left: 22),
                child: Text(
                  'Hello \nSign up!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: _gmailController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.verified_user,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: _ageController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.numbers,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Age',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: _heightController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Height',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: _weightController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 192, 56, 241),
                            Color.fromARGB(255, 180, 172, 185),
                          ]),
                        ),
                        child: TextButton(
                          child: const Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            final userId = await Hivehelper.getlogginedUserId();
                            debugPrint(
                                "${_usernameController.text} ${_gmailController.text} ${_ageController.text} ${_heightController.text} ${_weightController.text} ${_passwordController.text}");
                            final res = await AuthRepository.registraion(
                              uname: _usernameController.text,
                              ugmail: _gmailController.text,
                              unage: _ageController.text,
                              uheight: _heightController.text,
                              uweight: _weightController.text,
                              upassword: _passwordController.text,
                            );

                            if (res.status == 200) {
                              setState(() {
                                isLoading = false;
                              });
                              FlutterToastr.show(
                                  "succesfully registered", context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

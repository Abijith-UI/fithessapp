import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/core/hive_constants.dart';
import 'package:flutter_fitness_1/model/login_model.dart';
import 'package:flutter_fitness_1/repository/auth_repository.dart';
import 'package:flutter_fitness_1/view/home.dart';
import 'package:flutter_fitness_1/view/register.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //App bar

        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 206, 62, 234),
                  Color.fromARGB(255, 219, 215, 222),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Hello\nSign in!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
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
                        controller: gmailController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'gmail',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff281537),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 55,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 226, 226, 226),
                            Color(0xff281537),
                          ]),
                        ),
                        child: ElevatedButton(
                            onPressed: () => authenticate(context,
                                gmailController.text, passwordController.text),
                            child: const Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Don't have account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Register(),
                                        ));
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> authenticate(
      BuildContext context, String gmail, String password) async {
    final _auth = AuthRepository();
    try {
      setState(() {
        isLoading = true;
      });
      // json -> login model -> hive<loginmodel>
      // nosql

      final resp = await _auth.login(gmail, password);

      if (resp.status == 200) {
        // OPEN HIVE BOX
        final loginBox = await Hive.openBox<LoginModel>(HiveConstants.loginBox);
        // save hive object
        await loginBox.add(resp);
        // close hive onject
        await loginBox.close();
        setState(() {
          isLoading = false;
        });
        FlutterToastr.show("Login succesful", context);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
            (route) => false);
      } else {
        setState(() {
          isLoading = false;
        });
        FlutterToastr.show("Invalid credentials", context);
      }
    } on DioException catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint(e.error.toString());
      FlutterToastr.show("Server error check connection", context);
    }
  }
}

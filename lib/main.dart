import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/model/login_model.dart';
import 'package:hive_flutter/adapters.dart';
import './view/onview.dart';

Future<void> main() async {
  // hive registration
  // local db pluggin
  await Hive.initFlutter();
// registration adaptter
  Hive.registerAdapter(LoginModelAdapter());
  Hive.registerAdapter(DataAdapter());
  // hive registration end
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Fitness App", home: Onview());
  }
}

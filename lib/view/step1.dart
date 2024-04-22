import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/common/roundbutton.dart';
import 'package:flutter_fitness_1/view/step2.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1ViewState();
}

class _Step1ViewState extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Step 1 of 3",
            style: TextStyle(
                color: Color(0xffFF9B70),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "images/step_1.png",
                width: media.width * 0.6,
                height: media.width * 0.6,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Welcome to the\nFitness Application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 194, 110, 9),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "Personalized workouts will help you\ngain strength, get in better shape and\nembrace a healthy lifestyle",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffFF9B70),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: RoundButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Step2()));
                  },
                  title: 'Get started',
                  child: Text("Get started"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].map((pObj) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: 1 == pObj ? Colors.black : Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ));
  }
}

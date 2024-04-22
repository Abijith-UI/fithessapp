import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/common/roundbutton.dart';
import 'package:flutter_fitness_1/view/login.dart';
import 'package:flutter_fitness_1/view/register.dart';
import 'fitnesslevel.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2ViewState();
}

class _Step2ViewState extends State<Step2> {
  var selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "images/back.png",
                width: 25,
                height: 25,
              )),
          title: Text(
            "Step 2 of 3",
            style: TextStyle(
                color: Color.fromARGB(255, 239, 120, 9),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Select your fitness level",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 19, 17, 17),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              FitnessLevelSelector(
                title: "Beginer",
                subtitle: "You are new to fitness training",
                isSelect: selectIndex == 0,
                onPressed: () {
                  setState(() {
                    selectIndex = 0;
                  });
                },
              ),
              FitnessLevelSelector(
                title: "Intermediate",
                subtitle: "You have been training regularly",
                isSelect: selectIndex == 1,
                onPressed: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
              ),
              FitnessLevelSelector(
                title: "Advanced",
                subtitle: "You're fit and ready for an intensive workout plan",
                isSelect: selectIndex == 2,
                onPressed: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: RoundButton(
                  title: "Next",
                  child: Text(""),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
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
                        color: 2 == pObj
                            ? const Color(0xffFF9B70)
                            : Color.fromARGB(255, 167, 164, 164)
                                .withOpacity(0.7),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/common/icontile.dart';
// ignore: unused_import
import 'package:flutter_fitness_1/common/roundbutton.dart';
import 'package:flutter_fitness_1/common/commonaddsche.dart';
import 'package:flutter_fitness_1/view/home.dart';

class Addschedule extends StatefulWidget {
  final DateTime date;
  const Addschedule({super.key, required this.date});

  @override
  State<Addschedule> createState() => _AddScheduleViewState();
}

class _AddScheduleViewState extends State<Addschedule> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 46, 46),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 226, 226),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "images/closed_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Add Schedule",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 225, 225),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 226, 226, 215),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Image.asset(
                "images/date.png",
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                dateToString(widget.date, formatStr: "E, dd MMMM yyyy"),
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Time",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: media.width * 0.35,
            child: CupertinoDatePicker(
              onDateTimeChanged: (newDate) {},
              initialDateTime: DateTime.now(),
              use24hFormat: false,
              minuteInterval: 1,
              mode: CupertinoDatePickerMode.time,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Details Workout",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          IconTitleNextRow(
              icon: "images/choose_workout.png",
              title: "Choose Workout",
              time: "Upperbody",
              color: Colors.grey,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "images/difficulity.png",
              title: "Difficulity",
              time: "Beginner",
              color: Colors.grey,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "images/repetitions.png",
              title: "Custom Repetitions",
              time: "",
              color: Colors.grey,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "images/repetitions.png",
              title: "Custom Weights",
              time: "",
              color: Colors.grey,
              onPressed: () {}),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Save")),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}

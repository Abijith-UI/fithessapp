import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Bmi> {
  var wtcontroller = TextEditingController();
  var htcontroller = TextEditingController();
  var incontroller = TextEditingController();
  var result = "";
  var bgcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App bar
        appBar: AppBar(
            title: Text("BMI CALCULATOR"),
            centerTitle: true,
            //bg color
            backgroundColor: Color.fromARGB(255, 173, 84, 225),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.zero))

            //elevation
            //elevation: 10,
            ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BMI",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                  ),
                  TextField(
                    controller: wtcontroller,
                    decoration: InputDecoration(
                      label: Text("enter your weight in kg"),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: htcontroller,
                    decoration: InputDecoration(
                      label: Text("enter your height in feet(1 feet=30.48cm)"),
                      prefixIcon: Icon(Icons.height_outlined),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: incontroller,
                    decoration: InputDecoration(
                        label: Text("enter your height in inch(1 feet=12inch)"),
                        prefixIcon: Icon(Icons.height)),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      var wt = wtcontroller.text.toString();
                      var ht = htcontroller.text.toString();
                      var inc = incontroller.text.toString();

                      if (wt != "" && ht != "" && inc != "") {
                        var iwt = int.parse(wt);
                        var iht = int.parse(ht);
                        var iinc = int.parse(inc);

                        var tiinc = (iht * 12) + iinc;
                        var tcm = iinc * 2.54;
                        var tm = tcm / 100;
                        var bmi = iwt / (tm * tm);
                        var msg = "";

                        if (bmi > 28) {
                          msg = "You are over weight";
                          bgcolor = Colors.orange.shade200;
                        } else if (bmi < 18) {
                          msg = "You are under weight";
                          bgcolor = Colors.red.shade200;
                        } else {
                          msg = "You are healthy";
                          bgcolor = Colors.green.shade200;
                        }

                        setState(() {
                          // to decide the values after the fraction
                          result =
                              "  $msg\nYour BMI is : ${bmi.toStringAsFixed(2)}";
                        });
                      } else {
                        setState(() {
                          result = "Please all the required fileds";
                        });
                      }
                    },
                    child: Text("Calculate"),
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.only(
                        right: 40,
                        left: 40,
                        top: 10,
                        bottom: 10,
                      )),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 201, 33, 243)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

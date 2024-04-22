import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/common/roundbutton.dart';
import 'package:flutter_fitness_1/view/step1.dart';

class Onview extends StatefulWidget {
  const Onview({super.key});

  @override
  State<Onview> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<Onview> {
  PageController? controller = PageController();
  int selectPage = 0;

  List pageArr = [
    {
      "title": "Have a good health",
      "subtitle":
          "Being healthy is all, no health is nothing.\nSo why do not we",
      "image": "images/on_board_1.png",
    },
    {
      "title": "Be stronger",
      "subtitle":
          "Take 30 minutes of bodybuilding every day\nto get physically fit and healthy.",
      "image": "images/on_board_2.png",
    },
    {
      "title": "Have nice body",
      "subtitle":
          "Bad body shape, poor sleep, lack of strength,\nweight gain, weak bones, easily traumatized\n body, depressed, stressed, poor metabolism,\n poor resistance",
      "image": "images/on_board_3.png",
    }
  ];

  @override
  void initState() {
    super.initState();
    controller?.addListener(() {
      selectPage = controller?.page?.round() ?? 0;

      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffFF9B70),
      body: Stack(children: [
        Image.asset(
          "images/on_board_bg.png",
          width: media.width,
          height: media.height,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return Column(
                  children: [
                    Text(
                      pObj["title"].toString(),
                      style: TextStyle(
                          color: Color(0xffFF9B70),
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: media.width * 0.25,
                    ),
                    Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.8,
                      height: media.width * 0.8,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: media.width * 0.3,
                    ),
                    Text(
                      pObj["subtitle"].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                );
              }),
        ),
        SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((pObj) {
                  var index = pageArr.indexOf(pObj);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: selectPage == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                child: RoundButton(
                  title: "Start",
                  fontSize: 20,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Step1()),
                        (route) => false);
                  },
                  child: Text(""),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

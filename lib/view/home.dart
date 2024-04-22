import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/common/tab_button.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_fitness_1/core/hive_constants.dart';
import 'package:flutter_fitness_1/model/login_model.dart';
import 'package:flutter_fitness_1/view/bmi.dart';
import 'package:flutter_fitness_1/view/calorie.dart';
import 'package:flutter_fitness_1/view/diet.dart';
import 'package:flutter_fitness_1/view/login.dart';
import 'package:flutter_fitness_1/view/lowerworkout.dart';
import 'package:flutter_fitness_1/view/profile.dart';
import 'package:flutter_fitness_1/view/schedule.dart';
import 'package:flutter_fitness_1/view/workout.dart';
import 'package:hive_flutter/adapters.dart';

// ignore: camel_case_types
var scaffoldKey = GlobalKey<ScaffoldState>();

class Globalkey {}

// ignore: camel_case_types
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => homeState();
}

// final List<String> servicesleft = ["images/gym1.jpg", "images/gym2.jpg"];
// final List<String> servicesright = ["images/gym1.jpg", "images/gym2.jpg"];
// final List<String> servicesnameleft = ["chest", "biceps"];
// final List<String> servicesnameright = ["back", "triceps"];

// ignore: camel_case_types
class homeState extends State<Home> {
  int indexNum = 0;

  get child => null;

  get onPressed => null;

  int indexnumb = 0;

// for bottombar
  int selectTab = 0;

  var currentTab = Home();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getloggineduser();
  }

  void _getloggineduser() async {
    final loginBox = await Hive.openBox<LoginModel>(HiveConstants.loginBox);
    final username = loginBox.values.first.data?.UdName;
    debugPrint(username);
  }

  @override
  Widget build(BuildContext context) {
    List images = [
      "images/lockroom.jpg",
      "images/spotter.jpg",
      "images/lockroom3.jpg",
      "images/lockroom4.jpg",
      "images/lockroom5.jpg",
    ];

    return
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage('images/gym1,j'))
        //   ),
        // )
        Scaffold(
            resizeToAvoidBottomInset: false,
            // backgroundColor: Color.fromARGB(255, 83, 87, 64),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text("Fitness App"),
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 220, 106, 243),
              leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  }),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
              ],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(bottom: Radius.zero)),
              elevation: 200,
            ),

            // sidebar

            drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 243, 240, 244),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Abijith"),
                    accountEmail: Text("admin123@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/4230990.jpg"),
                      backgroundColor: Color.fromARGB(255, 226, 242, 49),
                    ),
                  ),
                  // TextButton(onPressed: () {}, child: Text("Edit Profile")),
                  ListTile(
                    leading: Icon(Icons.person),
                    iconColor: Color.fromARGB(255, 4, 4, 4),
                    title: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: const Color.fromARGB(255, 3, 3, 3),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.sports_gymnastics_rounded),
                    iconColor: Color.fromARGB(255, 0, 0, 0),
                    title: Text(
                      "Exercises",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Workout()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.schedule),
                    iconColor: const Color.fromARGB(255, 1, 1, 1),
                    title: Text(
                      "Schedules",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScheduleView()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.food_bank),
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    title: Text(
                      "Diet",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Diet()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calculate),
                    iconColor: Color.fromARGB(255, 15, 13, 15),
                    title: Text(
                      "BMI",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: const Color.fromARGB(255, 9, 8, 9),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bmi()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    iconColor: const Color.fromARGB(255, 12, 11, 12),
                    title: Text(
                      "Log out",
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    ),
                    textColor: const Color.fromARGB(255, 13, 12, 13),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.logout),
                  //   iconColor: const Color.fromARGB(255, 12, 11, 12),
                  //   title: Text(
                  //     "Lower",
                  //     style:
                  //         TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  //   ),
                  //   textColor: const Color.fromARGB(255, 13, 12, 13),
                  //   onTap: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => Lworkout()));
                  //   },
                  // ),
                ],
              ),
            ),

            // navigation bar

            bottomNavigationBar: BottomAppBar(
                child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, -2))
                  ]),
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabButton(
                      icon: "images/house.png",
                      selectIcon: "images/house.png",
                      isActive: selectTab == 0,
                      onTap: () {
                        selectTab = 0;
                        // currentTab = const Home();
                        if (mounted) {
                          setState(() {});
                        }
                      }),
                  TabButton(
                      icon: "images/fitns.png",
                      selectIcon: "images/fitns.png",
                      isActive: selectTab == 1,
                      onTap: () {
                        selectTab = 1;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Workout()));
                        currentTab = const Home();
                        if (mounted) {
                          setState(() {});
                        }
                      }),
                  const SizedBox(
                    width: 40,
                  ),
                  TabButton(
                      icon: "images/bmi.png",
                      selectIcon: "images/bmi.png",
                      isActive: selectTab == 2,
                      onTap: () {
                        selectTab = 2;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Bmi()));
                        currentTab = const Home();
                        if (mounted) {
                          setState(() {});
                        }
                      }),
                  TabButton(
                      icon: "images/profile.png",
                      selectIcon: "images/profile.png",
                      isActive: selectTab == 3,
                      onTap: () {
                        selectTab = 3;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                        currentTab = const Bmi() as Home;
                        if (mounted) {
                          setState(() {});
                        }
                      }),
                ],
              ),
            )),
            // currentIndex: indexnumb,
            // iconSize: 18,
            // selectedFontSize: 19,
            // showSelectedLabels: true,
            // onTap: (int index) {
            //   setState(() {
            //     indexnumb = index;
            //   });
            // },

            body: Container(
              padding: EdgeInsets.only(
                top: 5,
                left: 11,
                right: 11,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Training",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w700),
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Color.fromARGB(255, 138, 131, 131),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color.fromARGB(255, 127, 122, 121),
                        ),
                      ],
                    ),

                    CarouselSlider(
                      options: CarouselOptions(
                          clipBehavior: Clip.antiAlias,
                          height: 200,
                          autoPlay: true,
                          reverse: true,
                          enlargeCenterPage: true),
                      items: images.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(i),
                                  ),
                                ));
                          },
                        );
                      }).toList(),
                    ),

                    SizedBox(
                      height: 12,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 182, 122, 232)
                                    .withOpacity(0.8),
                                Color.fromARGB(255, 237, 230, 235)
                                    .withOpacity(0.9),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(88),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5, 8),
                              blurRadius: 20,
                              color: Colors.black.withOpacity(0.2),
                            )
                          ]),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 18,
                          top: 13,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Workout",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lets burn some calories...",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Image.asset(
                              "images/calorie.png",
                              height: 70,
                              width: 80,
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Row(
                                //   children: const [
                                //     SizedBox(
                                //       width: 20,
                                //     ),
                                //     Icon(
                                //       Icons.timer,
                                //       size: 20,
                                //       color: Colors.black,
                                //     ),
                                //     SizedBox(
                                //       width: 5,
                                //     ),
                                //     Text(
                                //       "click",
                                //       style: TextStyle(
                                //           fontSize: 15,
                                //           color: Color.fromARGB(255, 1, 4, 3)),
                                //     ),
                                //   ],
                                // ),
                                Expanded(child: Container()),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          blurRadius: 10,
                                          offset: Offset(4, 8),
                                        )
                                      ]),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CalorieCalculator()));
                                  },
                                  icon: Icon(
                                    Icons.play_circle_fill,
                                    size: 30,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Area of focus",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 400,
                      height: 110,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("images/upper3.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Workout()));
                        },
                        child: Text("Upper Body")),
                    Container(
                      width: 400,
                      height: 110,
                      // color: Colors.amber,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                "images/lower1.jpg",
                              ),
                              fit: BoxFit.fill)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Lworkout()));
                        },
                        child: Text("Lower Body")),
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 20),
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("images/card3.png"),
                                    fit: BoxFit.fitHeight),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 40,
                                    offset: Offset(8, 10),
                                    color: Color.fromARGB(255, 255, 251, 251)
                                        .withOpacity(0.3),
                                  ),
                                  BoxShadow(
                                    blurRadius: 40,
                                    offset: Offset(-8, -10),
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ]),
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(right: 200, bottom: 30),
                            // decoration: BoxDecoration(
                            //   // color: Colors.red.withOpacity(0.2),
                            //   borderRadius: BorderRadius.circular(20),
                            //   image: DecorationImage(
                            //     image: AssetImage("images/menu_running.png"),
                            //     // fit: BoxFit.fill
                            //   ),
                            // ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 100,
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.0),
                            margin: EdgeInsets.only(left: 35, top: 100),
                            child: Column(
                              children: [
                                Text(
                                  "You are doing great",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: "     Keep it up\n",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 217, 108, 40)),
                                        children: [
                                      TextSpan(text: "Stick to your plan")
                                    ]))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Expanded(
                    //     child: ListView.builder(
                    //         itemCount: 2,
                    //         itemBuilder: (_, i) {
                    //           return Row(
                    //             children: [
                    //               Container(
                    //                 padding: EdgeInsets.only(bottom: 8),
                    //                 width: 130,
                    //                 height: 150,
                    //                 decoration: BoxDecoration(
                    //                     color: Colors.white,
                    //                     borderRadius: BorderRadius.circular(15),
                    //                     image: DecorationImage(
                    //                         image: AssetImage(
                    //                             "images/step_1.png")),
                    //                     boxShadow: [
                    //                       BoxShadow(
                    //                           blurRadius: 3,
                    //                           offset: Offset(5, 5),
                    //                           color: Color.fromARGB(
                    //                                   255, 133, 127, 127)
                    //                               .withOpacity(1.0)),
                    //                       BoxShadow(
                    //                           blurRadius: 3,
                    //                           offset: Offset(-5, -5),
                    //                           color: Color.fromARGB(
                    //                                   255, 255, 251, 251)
                    //                               .withOpacity(1.0))
                    //                     ]),
                    //                 child: Center(
                    //                   child: Align(
                    //                       alignment: Alignment.bottomCenter,
                    //                       child: TextButton(
                    //                           onPressed: () {},
                    //                           child: Text('chest'))),
                    //                 ),
                    //               )
                    //             ],
                    //           );
                    //         }))
                  ],
                ),
              ),
            )

            // ListView(children: [
            //   // const Card(
            //   Column(
            //     children: const [
            //       ListTile(
            //         title: Text(
            //           "Lets Workout",
            //           style: TextStyle(
            //               fontSize: 30,
            //               color: Color.fromARGB(255, 8, 8, 8),
            //               fontStyle: FontStyle.italic),
            //         ),
            //         // leading: CircleAvatar(
            //         //   backgroundImage: AssetImage('images/pin.png'),
            //         // ),
            //       ),
            //     ],
            //   ),
            //   // ),

            //   // searchbar

            //   Container(
            //     padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
            //     decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 6, 207, 225),
            //         borderRadius: BorderRadius.circular(25)),
            //     child: TextField(
            //       decoration:
            //           InputDecoration(hintText: "Search", icon: Icon(Icons.search)),
            //     ),
            //   ),
            //   const SizedBox(
            //     height: 25,
            //   ),
            //   CarouselSlider(
            //     options: CarouselOptions(
            //         clipBehavior: Clip.antiAlias,
            //         height: 200,
            //         autoPlay: true,
            //         reverse: true,
            //         enlargeCenterPage: true),
            //     items: images.map((i) {
            //       return Builder(
            //         builder: (BuildContext context) {
            //           return Container(
            //               width: MediaQuery.of(context).size.width,
            //               margin: const EdgeInsets.symmetric(horizontal: 3.0),
            //               decoration: BoxDecoration(
            //                 color: const Color.fromARGB(255, 162, 30, 20),
            //                 borderRadius: BorderRadius.circular(10),
            //                 image: DecorationImage(
            //                   fit: BoxFit.cover,
            //                   image: AssetImage(i),
            //                 ),
            //               ));
            //         },
            //       );
            //     }).toList(),
            //   ),
            //   const SizedBox(
            //     height: 30,
            //   ),
            //   SingleChildScrollView(
            //     child: Container(
            //       height: MediaQuery.of(context).size.height / 2.6,
            //       child: Expanded(
            //         child: ListView.builder(
            //           itemCount: servicesleft.length,
            //           itemBuilder: (context, index) {
            //             return Row(
            //               children: <Widget>[
            //                 Container(
            //                   width: (MediaQuery.of(context).size.width - 0) / 2,
            //                   height: 100,
            //                   color: Colors.transparent,
            //                   child: Card(
            //                     color: Color.fromARGB(255, 12, 223, 181),
            //                     elevation: 5,
            //                     child: Row(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: <Widget>[
            //                         ClipOval(
            //                           child: Container(
            //                             child: Image.asset(
            //                               servicesleft[index],
            //                               fit: BoxFit.fill,
            //                               width: 55,
            //                               height: 55,
            //                             ),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           width: 10,
            //                         ),
            //                         Flexible(
            //                           child: Text(
            //                             servicesnameleft[index],
            //                             style: TextStyle(
            //                                 color: Colors.black,
            //                                 fontSize: 20,
            //                                 fontWeight: FontWeight.bold),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: (MediaQuery.of(context).size.width - 25) / 2,
            //                   height: 100,
            //                   color: Colors.transparent,
            //                   child: Card(
            //                     color: Color.fromARGB(255, 16, 196, 209),
            //                     elevation: 5,
            //                     child: Row(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: <Widget>[
            //                         ClipOval(
            //                           child: Container(
            //                             child: Image.asset(
            //                               servicesright[index],
            //                               fit: BoxFit.fill,
            //                               width: 55,
            //                               height: 55,
            //                             ),
            //                           ),
            //                         ),
            //                         SizedBox(
            //                           width: 10,
            //                         ),
            //                         Flexible(
            //                           child: Text(
            //                             servicesnameright[index],
            //                             style: TextStyle(
            //                                 color: Colors.black,
            //                                 fontSize: 20,
            //                                 fontWeight: FontWeight.bold),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             );
            //           },
            //         ),
            //       ),
            //     ),
            //   ),
            // ]),
            );
  }
}

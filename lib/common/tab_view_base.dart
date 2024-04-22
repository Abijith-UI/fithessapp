import 'package:flutter_fitness_1/common/exercise.dart';
import 'package:flutter_fitness_1/common/images_card.dart';
import 'package:flutter_fitness_1/data/dishes.dart'; // Assuming dishes data is imported here
import 'package:flutter/material.dart';

class TabViewBase extends StatelessWidget {
  final String tabName;

  TabViewBase({required this.tabName});

  List<Widget> _renderItem(Size size) {
    return List<Widget>.generate(dishes.length, (index) {
      var tag = dishes[index]['title'] + index.toString();
      return Container(
        key: ValueKey(tag),
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageCardWithBasicFooter(
              exercise: Exercise(
                image: dishes[index]['image'],
                title: dishes[index]['title'],
                time: dishes[index]['time'],
                difficult: dishes[index]['calories'],
                recipe: dishes[index]['how to prepare'], // Add recipe here
              ),
              tag: tag,
              imageWidth: size.width,
            ),
            SizedBox(height: 10.0),
            Text(
              'Recipe:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              dishes[index]['how to prepare'], // Display recipe here
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(219, 228, 255, 1.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Track my ' + this.tabName,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(5, 7, 12, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Add"),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 244, 154, 37))),
                  )
                  // Icon(
                  //   Icons.add,
                  //   size: 25.0,
                  //   color: Color.fromRGBO(244, 151, 37, 1),
                  // )
                ],
              ),
            ),
            Column(children: this._renderItem(size)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Widget rightSide;

  Header(this.title, {required this.rightSide});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: 28,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w700,
            ),
          ),
          margin: EdgeInsets.only(left: 20.0),
          height: 54.0,
        ),
        (this.rightSide != null) ? this.rightSide : Container()
      ],
    );
  }
}

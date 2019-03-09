import 'package:flutter/material.dart';
import './find_more_bar.dart' show FindMoreBar;

class FollowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(235, 235, 235, 1),
      child: ListView(
        children: <Widget>[
          FindMoreBar()
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

enum SimpleLineDirection { horizaontal, verticle }

class SimpleLine extends StatelessWidget {
  final SimpleLineDirection direction;
  final double length;
  final double width;
  final Color color;

  SimpleLine({
    Key key,
    @required this.direction,
    this.length,
    this.width,
    this.color,
  }) : super(key: key);

  _getBorder() {
    final borderSide = BorderSide(
      width: this.width ?? double.infinity,
      style: BorderStyle.solid,
      color: this.color ?? Colors.black12,
    );

    if (this.direction == SimpleLineDirection.horizaontal) {
      return Border(top: borderSide);
    } else {
      return Border(right: borderSide);
    }
  }

  @override
  Widget build(BuildContext context) {
    double boxWidth = length;
    double boxHeight = length;

    if (direction == SimpleLineDirection.horizaontal) {
      boxHeight = this.width;
    } else {
      boxWidth = this.width;
    }

    return Container(
      width: boxWidth,
      height: boxHeight,
      decoration: BoxDecoration(
        border: this._getBorder(),
      ),
    );
  }
}

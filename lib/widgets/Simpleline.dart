import 'package:flutter/material.dart';

enum LineDirection { horizaontal, verticle }

class SimpleLine extends StatelessWidget {
  final LineDirection direction;
  final double length;
  final double width;
  final Color color;

  SimpleLine({
    Key key,
    @required this.length,
    @required this.direction,
    this.width,
    this.color,
  }) : super(key: key);

  _getBorder() {
    final borderSide = BorderSide(
      width: this.width ?? 2.0,
      style: BorderStyle.solid,
      color: this.color ?? Colors.black12,
    );

    if (this.direction == LineDirection.horizaontal) {
      return Border(top: borderSide);
    } else {
      return Border(right: borderSide);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.length,
      decoration: BoxDecoration(
        border: this._getBorder(),
      ),
    );
  }
}

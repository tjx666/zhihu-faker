import 'package:flutter/material.dart';
import '../../widgets/Simpleline.dart' show SimpleLine, LineDirection;

class SerachBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      decoration: _searchBarDecoration,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                  label: Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      '杨超越编程大赛',
                      style: _searchBarTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SimpleLine(
            direction: LineDirection.verticle,
            length: 22.5,
            width: 1.5,
          ),
          FlatButton.icon(
            icon: Icon(
              Icons.border_color,
              size: 18.0,
              color: Colors.black54,
            ),
            label: Text(
              '提问',
              style: _searchBarTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

final _searchBarDecoration = BoxDecoration(
  color: Color.fromRGBO(235, 235, 235, 0.8),
  borderRadius: BorderRadius.circular(5.0),
);

final _searchBarTextStyle = TextStyle(
  fontSize: 16.0,
  fontFamily: '黑体',
  color: Colors.black54,
);

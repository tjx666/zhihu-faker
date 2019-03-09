import 'package:flutter/material.dart';

class FindMoreBar extends StatelessWidget {
  Widget _buildStackedAvatars() {
    const AVATAR_RADIUS = 16.0;
    const LEFT_OFFSET = 24.0;

    return Container(
      width: AVATAR_RADIUS * 2 + LEFT_OFFSET * 3,
      margin: EdgeInsets.only(right: 5.0),
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            maxRadius: AVATAR_RADIUS,
            backgroundImage: NetworkImage(
                'https://avatars0.githubusercontent.com/u/1024025?s=64&v=4'),
          ),
          Positioned(
            left: LEFT_OFFSET,
            child: CircleAvatar(
              maxRadius: AVATAR_RADIUS,
              backgroundImage: NetworkImage(
                  'https://avatars0.githubusercontent.com/u/37739538?s=460&v=4'),
            ),
          ),
          Positioned(
            left: LEFT_OFFSET * 2,
            child: CircleAvatar(
              maxRadius: AVATAR_RADIUS,
              backgroundImage: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/41773861?s=88&v=4'),
            ),
          ),
          Positioned(
            left: LEFT_OFFSET * 3,
            child: CircleAvatar(
              maxRadius: AVATAR_RADIUS,
              backgroundImage: NetworkImage(
                  'https://pic1.zhimg.com/v2-a2122d61cb1b49987bed5ff8422720a6_is.jpg'),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Text('发现更多感兴趣的人', style: _leadingTextStyle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildStackedAvatars(),
            Icon(Icons.chevron_right, color: Colors.black26, size: 20.0,)
          ],
        ),
      ),
    );
  }

  static final _leadingTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}

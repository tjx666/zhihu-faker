import 'package:flutter/material.dart';

class FindMoreBar extends StatelessWidget {
  static const _AVATAR_RADIUS = 16.0;
  static const _LEFT_OFFSET = 24.0;

  static const _avatarLinks = [
    'https://avatars0.githubusercontent.com/u/1024025?s=64&v=4',
    'https://avatars0.githubusercontent.com/u/37739538?s=460&v=4',
    'https://avatars2.githubusercontent.com/u/41773861?s=88&v=4',
    'https://pic1.zhimg.com/v2-a2122d61cb1b49987bed5ff8422720a6_is.jpg'
  ];

  Widget _buildStackedAvatars() {
    const avatarLinks = FindMoreBar._avatarLinks;
    return Container(
      width: _AVATAR_RADIUS * 2 + _LEFT_OFFSET * 3,
      margin: EdgeInsets.only(right: 5.0),
      child: Stack(
        children: avatarLinks.map((imageLink) {
          if (avatarLinks.indexOf(imageLink) == 0) {
            return CircleAvatar(
                maxRadius: _AVATAR_RADIUS,
                backgroundImage: NetworkImage(imageLink));
          } else {
            return Positioned(
              left: _LEFT_OFFSET * avatarLinks.indexOf(imageLink),
              child: CircleAvatar(
                maxRadius: _AVATAR_RADIUS,
                backgroundImage: NetworkImage(imageLink),
              ),
            );
          }
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: ListTile(
        leading: Text('发现更多感兴趣的人', style: _leadingTextStyle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildStackedAvatars(),
            Icon(
              Icons.chevron_right,
              color: Colors.black26,
              size: 20.0,
            )
          ],
        ),
      ),
    );
  }

  static const _leadingTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}

import 'package:flutter/material.dart';

// TODO: 将帖子预览数据修改为一个类, 而不是 map
class PostPreviewCard extends StatelessWidget {
  final String title;
  final String digest;
  final int supportCount;
  final int commentsCount;
  final String coverUrl;

  PostPreviewCard(
      {@required this.title,
      @required this.digest,
      this.supportCount = 0,
      this.commentsCount = 0,
      this.coverUrl});

  Widget _buildDigest() {
    final digestText = Text(
      this.digest,
      style: PostPreviewCard._digestStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );

    if (this.coverUrl == null) {
      return digestText;
    } else {
      return Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: digestText,
          ),
          Expanded(
            flex: 1,
            child: AspectRatio(
                  aspectRatio: 3.0 / 1.8,
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0),
                    foregroundDecoration: BoxDecoration(
                        image:  DecorationImage(
                          image:  NetworkImage(this.coverUrl),
                          fit: BoxFit.fitWidth
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  ),
              ),
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final commentCountText = commentsCount == null ? '' : '${commentsCount} 评论';
    
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: _titleStyle,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: _buildDigest(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('${supportCount} 赞同 · ${commentCountText}',
                  style: _bottomLestTextStyle),
              Icon(
                Icons.more_horiz,
                color: Colors.black26,
              )
            ],
          )
        ],
      ),
    );
  }

  static final _titleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static final _digestStyle = TextStyle(
    color: Colors.black87,
  );

  static final _bottomLestTextStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    color: Colors.black45,
  );
}

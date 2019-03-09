import 'package:flutter/material.dart';
import './find_more_bar.dart' show FindMoreBar;
import '../../widgets/post_preview_card.dart';

class _PreviewCard {
  final String avatarLink;
  final String name;
  final String timeAgo;
  final String title;
  final String digest;
  final String coverUrl;
  final int supportCount;
  final int commentsCount;

  const _PreviewCard({
    this.avatarLink,
    this.name,
    this.timeAgo,
    this.title,
    this.digest,
    this.coverUrl,
    this.supportCount,
    this.commentsCount,
  });
}

class FollowView extends StatelessWidget {
  static const List<_PreviewCard> _fakerPreviewListData = [
    const _PreviewCard(
      avatarLink:
          'https://pic2.zhimg.com/101433c65bf758163cdd4d1081f2789e_im.jpg',
      name: '汪志成',
      timeAgo: '4 分钟',
      title: '蓝鲸那么大，如果路过的什么虎鲸鲨鱼饿了上去随口咬一块肉那它该怎么办？',
      digest:
          '因为找不到蓝鲸确切数据，所以我根据一些带比例尺的图鉴估算了一下……蓝鲸体宽5m左右……虎鲸找到的数据是，吻部到口角大概是50cm，张角大概45°左右……然后，我按这个比例画了个图……啾~笑出声……这怕不是皮都没咬破……',
      coverUrl:
          'https://pic4.zhimg.com/v2-dd92f72456defa16ecd7330ef3b88c48_b.jpg',
      supportCount: 7394,
      commentsCount: 516,
    ),
    const _PreviewCard(
      avatarLink:
          'https://pic2.zhimg.com/v2-ea3ac0222577a3d515b61c499014a42d_xl.jpg',
      name: '圆胖肿',
      timeAgo: '16 分钟',
      title: '5G时代，编程环境会发生些什么变化？',
      digest:
          '无责任猜测云端，无状态的faas将会替换掉传统的单机crud开发，php和spring等都将面临巨大的压力，微服务也将面临新一轮洗牌，被云原生开发，faas，serverless所替换，也许会成就fp的黄金时代有状态的应用会将现有的container逐步小型化，微容器的概念将会诞生，参考上一段无状态应用的发展，重塑oop的辉煌nosql以及文件系统的比重将会逐步增大，rdbms的比重将会下降，还有半结构以及无结构处理引擎eg flink的重要性会逐步提升',
      supportCount: 4,
    ),
    const _PreviewCard(
      avatarLink:
          'https://pic1.zhimg.com/v2-5b72376a4c7819db4a0c8023ad21996c_im.jpg',
      name: '陈龙',
      timeAgo: '27 分钟',
      title: '怎样能快速找到一个能教 Java 的男朋友？',
      digest: '目的如此明确？那个Java程序员如果不考虑教会你之后会不会卸磨杀驴过河拆桥就不是好程序员。实现客户的任何需求都要留一手。',
      supportCount: 0,
    ),
    const _PreviewCard(
        avatarLink:
            'https://pic1.zhimg.com/v2-1bea18837914ab5a40537d515ed3219c_xl.jpg',
        name: 'vczh',
        timeAgo: '5 小时前',
        title: '为什么现在小品越来越不好看了？',
        digest:
            '小品，其最妙者在于一个小字。市井街头，鸡毛蒜皮，人生百态，凡所出现的，发生的经过加工演绎成小品。这样的成型的作品源自于生活，艺术性又高于生活。这大概就是人民群众喜闻乐见的文化。个人觉得陈佩斯，朱时茂的小品所选取的就是真切的，那个年代在所表演的场景中确实能看见的，所表演的不会让观众觉得假，是一种真实情感触动生理反应。',
        supportCount: 1549,
        commentsCount: 75),
  ];

  Widget _buildPreviewCard(_PreviewCard previewData) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 32.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    maxRadius: 12.0,
                    backgroundImage: NetworkImage(previewData.avatarLink),
                  ),
                ),
                Text('${previewData.name}赞同了 · ${previewData.timeAgo}前', style: _nameAndTimeAgoTextStyle)
              ],
            ),
          ),
          PostPreviewCard(
            title: previewData.title,
            digest: previewData.digest,
            coverUrl: previewData.coverUrl,
            supportCount: previewData.supportCount,
            commentsCount: previewData.commentsCount,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(235, 235, 235, 1),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FindMoreBar(),
              Column(
                children: _fakerPreviewListData
                    .map((previewData) => _buildPreviewCard(previewData))
                    .toList(),
              ),
            ],
          ),
        ));
  }

  static const _nameAndTimeAgoTextStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    color: Colors.black45,
  );
}

import 'package:flutter/material.dart';
import '../../widgets/post_preview_card.dart' show PostPreviewCard;

class RecommendView extends StatelessWidget {
  static final postPreviewListData = [
    {
      'title': '使用JavaScript写爬虫',
      'digest': 'weiyinfu: 相比Python，JavaScript才是更适合写爬虫的语言。原因有如下三个方面：JavaScript异步IO机制适用于爬虫这种IO密集型任务。JavaScript中的回调非常自然，使用异步网络请求能够充分利用CPU。JavaScript中的jQuery毫无疑问是最强悍的HTML解析工具，使用JavaScript写爬虫能够减少学习负担和记忆负担。虽然Python中有PyQuery，但终究还是比不上jQuery自然。爬取结果多为JSON，JavaScript是最适合处理JSON的语言。',
      'supportCount': 52,
      'commentsCount': 20,
    },
    {
      'title': '你们喜欢丝袜内穿吗？',
      'digest': '朋友们你们的重点是不是有点歪？？这道题问的不是丝袜内穿吗，为啥一定要这么关注我外头穿了啥？？那好吧我补充一下关于堆堆袜的。我为什么要穿堆堆袜？首先它遮肉。我小腿围40，够粗的吧，无论肉丝黑丝过膝袜中筒袜短袜全都看着非常粗，但是堆堆袜可以挡住小腿最粗的那个部分，只露出最细的膝盖下一点和脚踝，真的。怀疑的朋友可以看看我另一个回答  ，小腿粗的JK应该穿什么袜子。看看我穿不同袜子的对比图就知道哪个更遮肉了。不得不说那个答案底下还有人说 对比之下你还是穿堆堆袜吧。',
      'supportCount': 45,
      'commentsCount': 3,
      'coverUrl': 'https://pic1.zhimg.com/80/v2-6df6cfd431f682389797b622f1101370_hd.jpg'
    },
    {
      'title': '如何看待「有赞」年会公开宣布 996 工作制？',
      'digest': '沈世钧: 996制度，不仅在经济上赤裸裸的盘剥员工，更使得中年危机成为每个职场人的必然。日常工作中，无论是新招进一个员工，还是有老员工想离职，我都会“语重心长”的和他算一笔经济账。我告诉他，在这家公司（外企），你现在年薪40万（只是举例），虽然下家公司把你的薪水涨到50万，但工作强度却提升到了996。所以表面工资虽然上涨百分之十几，但如果按照法律规定，你该拿到的钱远不止这些。按照劳动法规定，工作日的加班工资为正常工资的150%，双休日是200%，法定假日是300%，假设11天的法定假日你有6天在加班，则996应得的工资为：（工作日加班费 + 周末加班费 + 法定假日加班费 + 正常工资）/ 正常工资 =（3*1.5 *20 + 12*2*4  +  12*3*0.5  +  8*20）/ 8*20  =  2.275。',
      'supportCount': 11613,
      'commentsCount': 979,
    },
    {
      'title': '作为 IT 行业的过来人，你有什么话想对后辈说的？',
      'digest': '二律背反: 世界上没有技术驱动型公司，不论google、facebook，还是腾讯、阿里，都不是技术驱动型公司。人可以以技术驱动自己进步，但公司不行。一家公司可以以技术切入某个市场，但如果它想生存下去，就一定不能以技术为导向，坚持以技术为导向的公司的生命力为零，其下场有两个：破产或者在破产之前被收购。如果你真的很痴迷钻研技术，请读研读博最后留校或者进研究院让国家用纳税人的钱养你。',
      'supportCount': 6700,
      'commentsCount': 430,
    },
    {
      'title': 'Flutter终将逆袭！1.2版本发布，或将统一江湖',
      'digest': '终端研发部: 在去年 MWC 大展上发布首个 Beta 版后，Flutter 1.0 正式版于 2018 年 12 月召开的 Flutter Live 2018 上正式发布。今天在巴塞罗那召开的 MWC 发布会上，Google 正式发布了 Flutter 跨平台 UI 框架的 1.2 版本。新版本最大的改变就是引入了对 Android App Bundles 的支持，可有效打包 Android APP 并创建即时应用的最新技术。此外该框架还帮助开发者接受应用内支付奠定了基础，并添加了很多基于 Web 的工具。',
      'supportCount': 52,
      'commentsCount': 20,
    }
  ];

  List<PostPreviewCard> _buildPostPreviews = RecommendView.postPreviewListData
            .map((postPreview) => PostPreviewCard(
                  title: postPreview['title'],
                  digest: postPreview['digest'],
                  supportCount: postPreview['supportCount'],
                  commentsCount: postPreview['commentsCount'],
                  coverUrl: postPreview['coverUrl'],
                ))
            .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(235, 235, 235, 1),
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: ListView(
        children: _buildPostPreviews,
      ),
    );
  }
}

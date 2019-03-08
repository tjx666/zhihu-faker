import 'package:flutter/material.dart';
import './search_bar.dart' show SerachBar;

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final _tabTextList = Set.from(const ['关注', '推荐', '热门']);

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      length: _tabTextList.length,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildTabs() => _tabTextList
      .map<Widget>((tabText) => Tab(
            text: tabText,
          ))
      .toList();

  // FIXME: tabBar 高度太高了"
  TabBar builtTopTabBar() {
    return TabBar(
      isScrollable: false,
      controller: this._controller,
      tabs: _buildTabs(),
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: Colors.black26,
      labelColor: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SerachBar(),
        bottom: builtTopTabBar(),
        backgroundColor: Colors.white,
      ),
    );
  }

  final _tabStyle = TextStyle(color: Colors.black54);
}

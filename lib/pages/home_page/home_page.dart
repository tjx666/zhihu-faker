import 'package:flutter/material.dart';
import './search_bar.dart' show SerachBar;

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SerachBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'pages/home_page/home_page.dart' show HomePage;

void main(List<String> args) {
  // 是否开启可视化布局
  debugPaintSizeEnabled = false;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

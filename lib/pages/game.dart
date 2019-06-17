import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
//    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('游戏'),
      ),
      url: "https://www.zhengw.top/game",
    );
  }
}

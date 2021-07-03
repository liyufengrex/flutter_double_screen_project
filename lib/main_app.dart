import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_subscreen_plugin/sub_screen_plugin.dart';

//主屏widget
class MainApp extends StatefulWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('主屏'),
        ),
        body: Container(
          color: Colors.greenAccent.withAlpha(50),
          child: Center(
            child: RaisedButton(
              child: Text(
                '发送随机数给副屏',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                final randomData = Random().nextInt(100).toString();
                SubScreenPlugin.sendMsgToViceScreen(
                  "data",
                  params: {"randomNum": randomData},
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

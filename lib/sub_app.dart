import 'package:flutter/material.dart';
import 'package:flutter_subscreen_plugin/sub_screen_plugin.dart';

//副屏app
class SubApp extends StatefulWidget {
  const SubApp({Key key}) : super(key: key);

  @override
  _SubAppState createState() => _SubAppState();
}

class _SubAppState extends State<SubApp> {
  String receiveData = '';

  @override
  void initState() {
    super.initState();
    SubScreenPlugin.viceStream.listen((event) {
      setState(() {
        receiveData = event.arguments.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('副屏'),
        ),
        body: Container(
          color: Colors.yellowAccent.withAlpha(50),
          child: Center(
            child: Text(
              "接收来自主屏的数据$receiveData",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

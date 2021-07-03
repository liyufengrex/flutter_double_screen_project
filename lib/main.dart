import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_double_screen/main_app.dart';
import 'package:test_double_screen/sub_app.dart';

void main() {
  var defaultRouteName = window.defaultRouteName;
  if ("subMain" == defaultRouteName) {
    //副屏
    runApp(SubApp());
  } else {
    //主屏
    runApp(MainApp());
  }
}

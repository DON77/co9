import 'package:flutter/material.dart';
import 'view/co9App.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const Co9App());

}



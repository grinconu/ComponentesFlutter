import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'donut_small' : Icons.donut_small,
  'input' : Icons.input,
  'list' : Icons.list,
  'tune' : Icons.tune,
  'flutter' : Icons.widgets,
  'page' : Icons.last_page,
  'sliver' : Icons.slow_motion_video
};

Icon getICon(String nameIcon){
  return Icon(_icons[nameIcon], color: Colors.blue,);
}
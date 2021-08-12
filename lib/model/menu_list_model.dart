import 'package:flutter/material.dart';

class MenuListModel{
  late String text;
  late IconData icon;
  late VoidCallback callBack;

  MenuListModel({
    required this.text,
    required this.icon,
    required this.callBack
});

}
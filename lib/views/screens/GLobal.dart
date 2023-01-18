
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detail {
  final String? name;
  final String? discription;

  detail({
    required this.name,
    required this.discription,
  });
}



class Global{
  static bool swval = false;
  static bool swval1 = false;
  static bool isIOS = false;

  static int currentItem = 0;

}


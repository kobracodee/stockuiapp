import 'package:flutter/cupertino.dart';

class Stock {
  String name;
  double firstBy;
  double currentPrice;
  double changeRate;
  Image logo;

  Stock({
    required this.name,
    required this.firstBy,
    required this.currentPrice,
    required this.changeRate,
    required this.logo,
  });
}

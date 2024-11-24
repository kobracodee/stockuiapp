import 'package:flutter/cupertino.dart';
import 'package:flutter_any_logo/flutter_logo.dart';

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

  static List<Stock> stocks = [
    Stock(
      name: 'Visa',
      firstBy: 275.84,
      currentPrice: 273.25,
      changeRate: -0.94,
      logo: AnyLogo.tech.visa.image(),
    ),
    Stock(
      name: 'Spotify',
      firstBy: 340.28,
      currentPrice: 379.70,
      changeRate: 8.73,
      logo: AnyLogo.media.spotify.image(),
    ),
    Stock(
      name: 'Master Card',
      firstBy: 492.62,
      currentPrice: 491.24,
      changeRate: -0.28,
      logo: AnyLogo.tech.masterCard.image(),
    ),
  ];
}

import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stockPriceProvider = StreamProvider<double>((ref) async*{
  double currentPrice = 100.0;

  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    currentPrice += Random().nextDouble() * 4 - 2;
     currentPrice = double.parse(currentPrice.toStringAsFixed(2));
    yield currentPrice;
  }
});
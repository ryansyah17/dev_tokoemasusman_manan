import 'dart:math';

import 'package:get/get.dart';

import '../../../data/gold_price_data.dart';

class HomeController extends GetxController {
  var goldPrices = <GoldPrice>[].obs;

  @override
  void onInit() {
    loadGoldPrices();
    super.onInit();
  }

  void loadGoldPrices() {
    List<GoldPrice> prices = [];
    Random random = Random();

    for (int i = 1; i <= 31; i++) {
      double price = random.nextInt(200000) +
          1400000; // harga emas antara 1400000 dan 1600000
      prices.add(GoldPrice(date: i.toString().padLeft(2, '0'), price: price));
    }

    goldPrices.assignAll(prices);
  }
}

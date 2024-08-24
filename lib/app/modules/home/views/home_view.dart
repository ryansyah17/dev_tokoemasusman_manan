import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: appBarWidgets('Beranda'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _grafikHargaEmas(),
            _hargaEmas(),
          ],
        ),
      ),
    );
  }

  Widget _grafikHargaEmas() {
    return Obx(
      () => Container(
        color: colorPrimer1,
        height: 25.h,
        width: double.infinity,
        child: LineChart(
          LineChartData(
            backgroundColor: colorPrimer1,
            baselineX: 0,
            baselineY: 0,
            maxY: 1800000,
            maxX: 31,
            minY: 1200000,
            lineBarsData: [
              LineChartBarData(
                spots: controller.goldPrices
                    .map((price) =>
                        FlSpot(double.parse(price.date), price.price))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hargaEmas() {
    return Padding(
      padding: EdgeInsets.all(4.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: colorPrimer1,
                borderRadius: BorderRadius.circular(4.w),
                border: Border.all(
                  color: colorPrimer1,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: colorGrey.withOpacity(0.2),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Harga Emas Kemarin',
                      style: montserratM.copyWith(
                        fontSize: 12,
                        color: colorBlack,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10.w,
                          child: Image.asset('assets/icons/gold.png'),
                        ),
                        Text(
                          'Rp1.430.000',
                          style: montserratB.copyWith(
                            color: colorBlack,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: colorPrimer2,
                borderRadius: BorderRadius.circular(4.w),
                border: Border.all(
                  color: colorPrimer2,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: colorGrey.withOpacity(0.2),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Harga Emas Hari ini',
                      style: montserratM.copyWith(
                        fontSize: 12,
                        color: colorBlack,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10.w,
                          child: Image.asset('assets/icons/gold.png'),
                        ),
                        Text(
                          'Rp1.435.000',
                          style: montserratB.copyWith(
                            color: colorBlack,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controllers/home_controller.dart';

class HomeViewMobile extends GetView<HomeController> {
  HomeViewMobile({Key? key}) : super(key: key);
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
            _kategoriProduk(),
            _produkPopuler(),
            SizedBox(
              height: 8.h,
            ),
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

  Widget _kategoriProduk() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _partOfKategoriProduk('assets/icons/diamond-ring.png', 'Aset'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Cincin'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Gelang'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Kalung'),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _partOfKategoriProduk('assets/icons/glist.png', 'Kalung'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Kalung'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Kalung'),
              _partOfKategoriProduk('assets/icons/glist.png', 'Kalung'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _partOfKategoriProduk(
    String image,
    String title,
  ) {
    return SizedBox(
      width: 22.w,
      height: 25.w,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorPrimer4,
              borderRadius: BorderRadius.circular(5.w),
            ),
            child: SizedBox(
              width: 15.w,
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Image.asset(image),
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            title,
            style: montserratM.copyWith(
              color: colorBlack,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _produkPopuler() {
    return Container(
      width: double.infinity,
      height: 38.h,
      decoration: BoxDecoration(
        color: colorPrimer4,
      ),
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Produk Populer',
                  style: montserratB.copyWith(color: colorBlack, fontSize: 16),
                ),
                Text(
                  'Lihat Semua>>',
                  style: montserratR.copyWith(
                    color: colorBlack,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 100.w,
              height: 28.h,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
                    child: Container(
                      width: 38.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: colorPrimer1,
                        borderRadius: BorderRadius.circular(4.w),
                        boxShadow: [
                          BoxShadow(
                            color: colorGrey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(1.w),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorGrey,
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorGrey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(4.w),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/cincin.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                              width: 38.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Cincin',
                                    style: montserratR.copyWith(
                                      color: colorBlack,
                                    ),
                                  ),
                                  Text(
                                    'Rp9.999.000',
                                    style: montserratM.copyWith(
                                      color: colorBlack,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

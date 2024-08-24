import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../const/const_color.dart';
import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  final int? selectedIndex;
  final Function(int index)? onTap;
  const NavbarView({super.key, this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: 8.h,
          bottom: 0.h,
          left: 0,
          right: 0,
          child: Container(
            height: 8.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: colorPrimer2,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (onTap != null) {
                            onTap!(0);
                          }
                        },
                        child: Column(
                          children: [
                            selectedIndex == 0
                                ? Container(
                                    width: 3.w,
                                    height: 3.w,
                                    decoration: BoxDecoration(
                                      color: colorBlack,
                                      borderRadius: BorderRadius.circular(50.w),
                                    ),
                                  )
                                : SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                      'assets/icons/home_black.png',
                                    ),
                                  ),
                            Text(
                              'Beranda',
                              style: (selectedIndex == 0)
                                  ? montserratB.copyWith(
                                      fontSize: 12, color: colorGrey)
                                  : montserratB.copyWith(
                                      fontSize: 12, color: colorBlack),
                              // ignore: deprecated_member_use
                              textScaleFactor: 1.0,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (onTap != null) {
                            onTap!(1);
                          }
                        },
                        child: Column(
                          children: [
                            selectedIndex == 1
                                ? Container(
                                    width: 3.w,
                                    height: 3.w,
                                    decoration: BoxDecoration(
                                      color: colorBlack,
                                      borderRadius: BorderRadius.circular(50.w),
                                    ),
                                  )
                                : SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                      'assets/icons/simulasi_black.png',
                                    ),
                                  ),
                            Text(
                              'Simulasi',
                              style: (selectedIndex == 1)
                                  ? montserratB.copyWith(
                                      fontSize: 12, color: colorGrey)
                                  : montserratB.copyWith(
                                      fontSize: 12, color: colorBlack),
                              // ignore: deprecated_member_use
                              textScaleFactor: 1.0,
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      GestureDetector(
                        onTap: () {
                          if (onTap != null) {
                            onTap!(2);
                          }
                        },
                        child: Column(
                          children: [
                            selectedIndex == 2
                                ? Container(
                                    width: 3.w,
                                    height: 3.w,
                                    decoration: BoxDecoration(
                                      color: colorBlack,
                                      borderRadius: BorderRadius.circular(50.w),
                                    ),
                                  )
                                : SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                      'assets/icons/activity_black.png',
                                    ),
                                  ),
                            Text(
                              'Riwayat',
                              style: (selectedIndex == 2)
                                  ? montserratB.copyWith(
                                      fontSize: 12, color: colorGrey)
                                  : montserratB.copyWith(
                                      fontSize: 12, color: colorBlack),
                              // ignore: deprecated_member_use
                              textScaleFactor: 1.0,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (onTap != null) {
                            onTap!(3);
                          }
                        },
                        child: Column(
                          children: [
                            selectedIndex == 3
                                ? Container(
                                    width: 3.w,
                                    height: 3.w,
                                    decoration: BoxDecoration(
                                      color: colorBlack,
                                      borderRadius: BorderRadius.circular(50.w),
                                    ),
                                  )
                                : SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset(
                                      'assets/icons/user_black.png',
                                    ),
                                  ),
                            Text(
                              'Akun',
                              style: (selectedIndex == 3)
                                  ? montserratB.copyWith(
                                      fontSize: 12, color: colorGrey)
                                  : montserratB.copyWith(
                                      fontSize: 12, color: colorBlack),
                              // ignore: deprecated_member_use
                              textScaleFactor: 1.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 3.h,
          left: 45.w,
          right: 40.w,
          child: Container(
            height: 15.w,
            width: 15.w,
            decoration: BoxDecoration(
              color: colorPrimer2,
              boxShadow: [
                BoxShadow(
                  color: colorGrey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.circular(50.w),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: colorBlack,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

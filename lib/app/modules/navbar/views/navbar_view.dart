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
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: selectedIndex == 0
                                  ? Image.asset(
                                      'assets/icons/home_white.png',
                                    )
                                  : Image.asset(
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
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: selectedIndex == 1
                                  ? Image.asset(
                                      'assets/icons/simulasi_white.png',
                                    )
                                  : Image.asset(
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
                      GestureDetector(
                        onTap: () {
                          if (onTap != null) {
                            onTap!(2);
                          }
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: selectedIndex == 2
                                  ? Image.asset(
                                      'assets/icons/activity_white.png',
                                    )
                                  : Image.asset(
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
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: selectedIndex == 3
                                  ? Image.asset(
                                      'assets/icons/user_white.png',
                                    )
                                  : Image.asset(
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
      ],
    );
  }
}

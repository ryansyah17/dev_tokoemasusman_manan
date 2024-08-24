import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/akun_controller.dart';

class AkunViewMobile extends GetView<AkunController> {
  const AkunViewMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgets('Profil'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _profileData(),
            _listButton(),
          ],
        ),
      ),
    );
  }

  Widget _profileData() {
    return Container(
      height: 20.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorPrimer1,
        boxShadow: [
          BoxShadow(
            color: colorGrey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.w),
          bottomRight: Radius.circular(10.w),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              maxRadius: 12.w,
              backgroundImage: const AssetImage('assets/icons/user_black.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Andreas Roberston',
                  style: montserratB.copyWith(
                    color: colorBlack,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+6281243779612',
                      style: montserratR.copyWith(
                        color: colorBlack,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Container(
                      width: 2.w,
                      height: 2.w,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50.w),
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      'terverifikasi',
                      style: montserratR.copyWith(
                        color: colorBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _listButton() {
    return Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        children: [
          _partOfListButton('Profil', 'assets/icons/user-profile.png'),
          _partOfListButton('Aset Tersimpan', 'assets/icons/user-profile.png'),
          _partOfListButton('Kode Referal', 'assets/icons/user-profile.png'),
          _partOfListButton('Hapus Akun', 'assets/icons/user-profile.png'),
          _partOfListButton('Logout', 'assets/icons/user-profile.png'),
        ],
      ),
    );
  }

  Widget _partOfListButton(
    String title,
    String image,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Container(
        height: 6.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorPrimer4,
          borderRadius: BorderRadius.circular(2.w),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Row(
            children: [
              SizedBox(
                height: 8.w,
                width: 8.w,
                child: Image.asset(image),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                title,
                style: montserratB.copyWith(
                  color: colorBlack,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

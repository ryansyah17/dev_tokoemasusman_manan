import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:dev_tokoemasusman/app/modules/akun/views/akun_view.dart';
import 'package:dev_tokoemasusman/app/modules/riwayat/views/riwayat_view.dart';
import 'package:dev_tokoemasusman/app/modules/simulasi/views/simulasi_view.dart';
import 'package:flutter/material.dart';

import '../../home/views/home_view.dart';
import 'navbar_view.dart';

class MainPageView extends StatefulWidget {
  final int? initialPage;
  final int? index;
  const MainPageView({
    super.key,
    this.initialPage,
    this.index,
  });

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int index = 0;
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    index = widget.index!;
    selectedPage = widget.initialPage!;
    pageController = PageController(initialPage: widget.initialPage!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: colorPrimer2,
          ),
          SafeArea(
            child: Container(
              color: colorPrimer1,
            ),
          ),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              Center(
                child: HomeView(),
              ),
              Center(
                child: SimulasiView(),
              ),
              Center(
                child: RiwayatView(),
              ),
              Center(
                child: AkunView(),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavbarView(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:dev_tokoemasusman/app/const/size_config.dart';
import 'package:dev_tokoemasusman/app/modules/home/views/home_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveUI(
      mobileView: HomeViewMobile(),
      tabletView: Container(),
    );
  }
}

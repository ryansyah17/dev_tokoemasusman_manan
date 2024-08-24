import 'package:dev_tokoemasusman/app/const/size_config.dart';
import 'package:dev_tokoemasusman/app/modules/akun/views/akun_view_mobile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveUI(
      mobileView: AkunViewMobile(),
      tabletView: Container(),
    );
  }
}

import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/simulasi_controller.dart';

class SimulasiView extends GetView<SimulasiController> {
  const SimulasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgets('Simulasi'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _grafikHargaEmas(),
          ],
        ),
      ),
    );
  }

  Widget _grafikHargaEmas() {
    return Container(
      color: colorPrimer4,
      width: double.infinity,
      height: 25.h,
    );
  }
}

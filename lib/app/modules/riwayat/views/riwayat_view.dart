import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  const RiwayatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgets('Riwayat'),
      body: const Center(
        child: Text(
          'RiwayatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

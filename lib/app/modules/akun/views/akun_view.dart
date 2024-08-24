import 'package:dev_tokoemasusman/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgets('Profil'),
      body: const Center(
        child: Text(
          'AkunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

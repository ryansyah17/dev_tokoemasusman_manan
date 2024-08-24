import 'package:dev_tokoemasusman/app/const/const_color.dart';
import 'package:flutter/material.dart';

AppBar appBarWidgets(
  String title,
) {
  return AppBar(
    backgroundColor: colorPrimer2,
    centerTitle: false,
    elevation: 1,
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: montserratB.copyWith(
        color: colorBlack,
        fontSize: 16,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications, color: colorBlack),
      ),
    ],
  );
}

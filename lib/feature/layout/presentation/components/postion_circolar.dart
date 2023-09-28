import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/const_color.dart';

Widget buildPostionCirclar() {
  return Stack(
    children: [
      PositionedDirectional(
        top: -60,
        start: 40,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: ColorManger.sBlue.withOpacity(.4),
        ),
      ),
      PositionedDirectional(
        top: 130,
        end: -20,
        child: CircleAvatar(
            radius: 60, backgroundColor: ColorManger.tealColor.withBlue(900)),
      ),
      PositionedDirectional(
        top: 250,
        start: -20,
        child: CircleAvatar(
          radius: 60,
          backgroundColor: ColorManger.sBlue.withOpacity(.1),
        ),
      ),
      PositionedDirectional(
        top: 260,
        end: -90,
        child: CircleAvatar(
          radius: 90,
          backgroundColor: ColorManger.sBlue.withOpacity(.1),
        ),
      ),
    ],
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/const_color.dart';

import '../component/pay1-body.dart';


class Pay1Screen extends StatelessWidget {
  Pay1Screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.sWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Pay1Body(),
    );
  }
}

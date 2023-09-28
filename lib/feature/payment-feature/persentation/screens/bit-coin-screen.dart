
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/global_style/style/const_color.dart';
import '../component/bit-coin-body.dart';


class BitCoinScreen extends StatelessWidget {
  const BitCoinScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.sWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BitCoinBody(),
    );
  }
}

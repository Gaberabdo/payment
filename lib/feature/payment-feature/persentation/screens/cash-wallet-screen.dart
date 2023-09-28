import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/global_style/style/const_color.dart';
import '../component/cash-wallet-body.dart';

class CashWalletScreen extends StatelessWidget {
  const CashWalletScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.sWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: CashWalletBody(),
    );
  }
}

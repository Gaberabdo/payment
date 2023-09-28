import 'package:flutter/material.dart';
import '../../../../core/global_style/style/const_color.dart';
import '../component/bank-wallet-body.dart';

class BankWalletScreen extends StatelessWidget {
  const BankWalletScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.sWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: BankWalletBody(),
    );
  }
}

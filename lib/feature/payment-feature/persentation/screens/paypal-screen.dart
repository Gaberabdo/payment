
import 'package:flutter/material.dart';
import '../../../../core/global_style/style/const_color.dart';
import '../component/paypal-component.dart';

class PaypalScreen extends StatelessWidget {
  PaypalScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.sWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: PaypalBody(),
    );
  }
}

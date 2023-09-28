import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/const_color.dart';
import 'package:paypal/core/util/dummy.dart';
import 'package:paypal/feature/layout/presentation/controller/home_cubit.dart';

PositionedDirectional buildPositionedDirectionalIndector(BuildContext context, HomeCubit cubit) {
  return PositionedDirectional(
    bottom: MediaQuery.sizeOf(context).height / 2.7,
    child: CircleAvatar(
      radius: 45,
      backgroundColor: ColorManger.kColor,
      child: CircleAvatar(
        backgroundColor: ColorManger.sWhite,
        radius: 39,
        child: Icon(
          paymentIcon[cubit.currentIndex],
          size: 40,
          color: Colors.black,
        ),
        // backgroundImage: CachedNetworkImageProvider('https://cdn2.iconfinder.com/data/icons/e-commerce-solid-2/32/cash_money_wallet_finance_account_balance_payment-512.png'),
      ),
    ),
  );
}

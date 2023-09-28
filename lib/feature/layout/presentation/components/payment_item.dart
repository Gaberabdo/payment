import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/const_color.dart';
import 'package:paypal/core/global_style/style/values_manager.dart';
import 'package:paypal/core/util/dummy.dart';
import 'package:paypal/feature/payment-feature/persentation/screens/bank-wallet-screen.dart';
import 'package:paypal/feature/payment-feature/persentation/screens/bit-coin-screen.dart';
import 'package:paypal/feature/payment-feature/persentation/screens/cash-wallet-screen.dart';
import 'package:paypal/feature/payment-feature/persentation/screens/paypal-screen.dart';

import '../controller/home_cubit.dart';

Widget listPaymentItem() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleAvatar(
            radius: 17,
            backgroundColor: ColorManger.sWhite,
            child: Icon(
              paymentIcon[index],
              color: Colors.black,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: AppSize.s30,
          );
        },
        itemCount: paymentIcon.length,
      ),
    ),
  );
}

Widget carouselSliderItem(BuildContext context, HomeCubit cubit) {
  return SizedBox(
    height: AppSize.s170,
    width: MediaQuery.sizeOf(context).width,
    child: CarouselSlider.builder(
      itemCount: paymentColor.length,
      carouselController: cubit.pageController,
      itemBuilder: (context, index, realIndex) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                if (index == 0) {
                  return PaypalScreen();
                } else if (index == 1) {
                  return const CashWalletScreen();
                } else if (index == 2) {
                  return const BitCoinScreen();
                } else {
                  return const BankWalletScreen();
                }
              },
            ));
            cubit.changeIndex(index);
            cubit.pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.fastEaseInToSlowEaseOut,
            );
          },
          child: Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width * .7,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: paymentColor[index]),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          paymentMethod[index],
                          style: TextStyle(
                              color: ColorManger.sWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: FontSize.s16),
                        ),
                        Text(
                          paymentNum[index].toString(),
                          style: TextStyle(
                              color: ColorManger.sWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: FontSize.s25),
                        ),
                        Text(
                          paymentType[index],
                          style: TextStyle(
                              color: ColorManger.sWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: FontSize.s16),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: ColorManger.sWhite,
                    child: Icon(
                      paymentIcon[index],
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(),
    ),
  );
}

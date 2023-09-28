import 'package:flutter/cupertino.dart';
import 'package:paypal/core/global_style/style/const_color.dart';
import 'package:paypal/core/global_style/style/values_manager.dart';
import 'package:paypal/feature/layout/presentation/components/header_home_page.dart';
import 'package:paypal/feature/layout/presentation/components/indector.dart';
import 'package:paypal/feature/layout/presentation/components/range_date_comp.dart';

import '../controller/home_cubit.dart';
import 'payment_item.dart';
import 'postion_circolar.dart';

Widget homeBody(BuildContext context, HomeCubit cubit) {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ///todo blue Container
          Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                color: ColorManger.kColor,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 80),
                  child: Column(
                    children: [
                      headerHomeScreen(),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      listPaymentItem(),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      carouselSliderItem(context, cubit),
                    ],
                  ),
                ),
              ),
              buildPostionCirclar(),
            ],
          ),

          ///todo White Container
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * .43,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: ColorManger.sWhite,
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.elliptical(50, 50),
                    topEnd: Radius.elliptical(50, 50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: AppPadding.p40,
                    right: AppPadding.p28,
                    left: AppPadding.p28,
                  ),
                  child: DateRangeCom(),
                ),
              ),
            ],
          ),
        ],
      ),
      buildPositionedDirectionalIndector(context, cubit),
    ],
  );
}

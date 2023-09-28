import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/values_manager.dart';

import '../../../../core/global_style/style/const_color.dart';


class DateRangeCom extends StatelessWidget {
  const DateRangeCom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text("Today"),
              Spacer(),
              Icon(
                Icons.calendar_month_rounded,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          Row(
            children: [
              Container(
                height: AppSize.s40,
                width: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManger.sGrey,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 8,
                    child: Icon(
                      Icons.call_made_rounded,
                      size: AppSize.s15,
                      color: ColorManger.sGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('UI/UX course'),
                  Text(
                    'payment via paypal',
                    style: TextStyle(color: ColorManger.sGrey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    r'-$250.00',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'USD',
                    style: TextStyle(
                        color: ColorManger.sGrey, fontSize: FontSize.s12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.s5,
          ),
          const Divider(),
          const SizedBox(
            height: AppSize.s5,
          ),
          Row(
            children: [
              Container(
                height: AppSize.s40,
                width: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManger.sGrey,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 8,
                    child: Icon(
                      Icons.call_received,
                      size: AppSize.s15,
                      color: ColorManger.sGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Fonds Added'),
                  Text(
                    'Received via Wallet transaction',
                    style: TextStyle(
                      color: ColorManger.sGrey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    r'-$250.00',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'USD',
                    style: TextStyle(
                        color: ColorManger.sGrey, fontSize: FontSize.s12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.s5,
          ),
          const Divider(),
          const SizedBox(
            height: AppSize.s20,
          ),
          Text(
            'Friday,Jun 1,2023',
            style: TextStyle(color: ColorManger.sGrey, fontSize: FontSize.s16),
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          Row(
            children: [
              Container(
                height: AppSize.s40,
                width: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManger.sGrey,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 8,
                    child: Icon(
                      Icons.call_made_rounded,
                      size: AppSize.s15,
                      color: ColorManger.sGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Cyber Royal flutter course'),
                  Text(
                    'payment via paypal',
                    style: TextStyle(color: ColorManger.sGrey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    r'-$250.00',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'USD',
                    style: TextStyle(
                        color: ColorManger.sGrey, fontSize: FontSize.s12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.s5,
          ),
          const Divider(),
          const SizedBox(
            height: AppSize.s5,
          ),
          Row(
            children: [
              Container(
                height: AppSize.s40,
                width: AppSize.s40,
                decoration: BoxDecoration(
                    color: ColorManger.sGrey,
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 8,
                    child: Icon(
                      Icons.call_received,
                      size: AppSize.s15,
                      color: ColorManger.sGrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Fonds Added'),
                  Text(
                    'Received via Wallet transaction',
                    style: TextStyle(
                      color: ColorManger.sGrey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    r'-$250.00',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'USD',
                    style: TextStyle(
                        color: ColorManger.sGrey, fontSize: FontSize.s12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.s5,
          ),
          const Divider(),
        ],
      ),
    );
  }
}

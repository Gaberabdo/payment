import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paypal/feature/payment-feature/persentation/screens/pay1-screen.dart';

import '../../../../core/component-helper/button-component.dart';
import '../../../../core/component-helper/textfrom filed-component.dart';
import '../../../../core/global_style/style/const_color.dart';

class BankWalletBody extends StatelessWidget {
  BankWalletBody({Key? key}) : super(key: key);
  TextEditingController addController = TextEditingController();
  TextEditingController addByController = TextEditingController();
  TextEditingController whyController = TextEditingController();
  TextEditingController fromWhoController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: ColorManger.sMoney,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r'$3860',
                        style: TextStyle(
                            color: ColorManger.sWhite,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'USD Dollar',
                        style: TextStyle(
                            color: ColorManger.sWhite,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Updata 3 June 2023',
                            style: TextStyle(
                                color: ColorManger.sWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'Bank Wallet',
                                style: TextStyle(
                                    color: ColorManger.sWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: ColorManger.sWhite, //color of divider
                                  width: 8, //width space of divider
                                  thickness: 2, //thickness of divier line
                                  indent: 10, //Spacing at the top of divider.
                                  endIndent:
                                      10, //Spacing at the bottom of divider.
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.moneyBillTransfer,
                                size: 30,
                                color: ColorManger.sWhite,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Add Money to Your account',
                  style: TextStyle(
                      color: ColorManger.sBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'To get account details, You need to add money \nto your account, You will be able to use this\n money once its there',
                  style: TextStyle(color: ColorManger.sGrey, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Add',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,
                hintText: ' Add',
                validator: 'filed is required',
                obscureText: false,
                controller: addController,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Add By',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,
                hintText: ' Add By',
                validator: 'filed is required',
                obscureText: false,
                controller: addByController,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 1,
                child: Divider(
                  thickness: 2,
                  color: ColorManger.sGrey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Why',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,
                hintText: ' Why',
                validator: 'filed is required',
                obscureText: false,
                controller: whyController,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'From Who',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,
                hintText: ' From Who',
                validator: 'filed is required',
                obscureText: false,
                controller: fromWhoController,
              ),
              const SizedBox(
                height: 30,
              ),
              MyElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Pay1Screen();
                      },
                    ));
                    print('donne');
                  }
                },
                text: 'ADD',
                height: 55,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/component-helper/button-component.dart';
import '../../../../core/component-helper/textfrom filed-component.dart';
import '../../../../core/global_style/style/const_color.dart';


class Pay1Body extends StatelessWidget {
  Pay1Body({Key? key}) : super(key: key);
  TextEditingController addController=TextEditingController();
  TextEditingController addByController=TextEditingController();
  TextEditingController whyController=TextEditingController();
  TextEditingController fromWhoController=TextEditingController();
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
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r'$3860',
                            style: TextStyle(
                                color:ColorManger.sWhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          Icon(Icons.arrow_right_alt, size: 70,color: Colors.greenAccent,),

                          Text(r'$4060',
                            style: TextStyle(
                                color:Colors.greenAccent,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('USD Dollar',
                            style: TextStyle(
                                color:ColorManger.sWhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            children: [
                              Text('+Add Invoice Photo',
                                style: TextStyle(
                                    color:ColorManger.sWhite,
                                    fontSize: 16,

                                ),
                              ),
                              Icon(Icons.image,color: ColorManger.sWhite,size: 30,)
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recent Updata 3 June 2023',
                            style: TextStyle(
                                color:ColorManger.sWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),
                          ),

                          Row(

                            children: [
                              Text('Cash Wallet',
                                style: TextStyle(
                                    color:ColorManger.sWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: ColorManger.sWhite,  //color of divider
                                  width: 8, //width space of divider
                                  thickness: 2, //thickness of divier line
                                  indent: 10, //Spacing at the top of divider.
                                  endIndent: 10, //Spacing at the bottom of divider.
                                ),
                              ),
                              FaIcon(FontAwesomeIcons.wallet,size: 30,color: ColorManger.sWhite,),
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
                      fontSize: 16
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'To get account details, You need to add money \nto your account, You will be able to use this\n money once its there',
                  style: TextStyle(
                      color: ColorManger.sGrey,

                      fontSize: 16
                  ),),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Add',
                style: TextStyle(
                    fontSize: 18
                ),),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,

                hintText: ' 200',
                suffixIcon:Text('USD'),

                validator: 'filed is required',
                obscureText: false, controller: addController,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Add By',
                style: TextStyle(
                    fontSize: 18
                ),),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,

                hintText: ' Credit card',
                prefixIcon:   FaIcon(FontAwesomeIcons.creditCard,size: 30,),
                suffixIcon:  FaIcon(FontAwesomeIcons.circleCheck,size: 30,color: Colors.blue,),

                validator: 'filed is required',
                obscureText: false, controller: addByController,
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
              Text('Why',
                style: TextStyle(
                    fontSize: 18
                ),),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,

                hintText: ' ABCD',

                validator: 'filed is required',
                obscureText: false, controller: whyController,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('From Who',
                style: TextStyle(
                    fontSize: 18
                ),),
              const SizedBox(
                height: 5,
              ),
              TextFormWidget(
                icon: false,

                hintText: ' ABCD',

                validator: 'filed is required',
                obscureText: false, controller: fromWhoController,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width:250,
                  height:55,
                  child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){

                        print('donne');
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      shape: (
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(
                                color: Colors.grey.shade900,

                              )
                          )
                      ),
                    ),
                    child: Text(
                      r'ADD $200 USD',
                      style: TextStyle(
                        color: ColorManger.sWhite,
                      ),
                    ),
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}

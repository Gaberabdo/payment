import 'package:flutter/material.dart';
import 'package:paypal/core/global_style/style/const_color.dart';
import 'package:paypal/core/global_style/style/values_manager.dart';

Widget headerHomeScreen() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text(
          'Balance Account',
          style: TextStyle(
              color: ColorManger.sWhite,
              fontWeight: FontWeight.bold,
              fontSize: FontSize.s24),
        ),
        const Spacer(),
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(12),
          child: Container(
            color: Colors.greenAccent.shade200,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(8),
                child: Image.network(
                  'https://img.freepik.com/free-photo/full-shot-woman-posing-romantic-garden_23-2150316911.jpg?size=626&ext=jpg&uid=R78903714&ga=GA1.2.131510781.1692744483',
                  height: 33,
                  fit: BoxFit.cover,
                  width: 33,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
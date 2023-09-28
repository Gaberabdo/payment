import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final double height;
  final VoidCallback? onPressed;
  final String text;

  final Color? primary;
  final Color? fontColor;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.primary,
    this.fontColor,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width:250,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: (
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: Colors.grey.shade700,

                  )
                )
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
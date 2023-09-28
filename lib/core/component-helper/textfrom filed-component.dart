import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  TextFormWidget({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    required this.validator,
    this.obscureText,
    this.icon,
    this.suffixIcon,
    this.enabled,
  });

  final TextEditingController controller;
  final Widget? prefixIcon;
  final String? hintText;
  final String validator;
  bool? obscureText;
  bool? enabled = true;
  bool? icon;
  Widget? suffixIcon;

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        cursorColor: Colors.black87,
        enabled: widget.enabled,
        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: widget.obscureText!,
        onFieldSubmitted: (value) {
          FocusScope.of(context).nextFocus();
        },
        validator: (String? value) {
          if (value!.isEmpty) {
            return widget.validator;
          }
          return null;
        },
        keyboardAppearance: Brightness.dark,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelStyle: const TextStyle(fontSize: 20, color: Colors.grey),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.prefixIcon,
            ),
          ),
          suffixIcon: widget.suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

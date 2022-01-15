import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    required this.hintText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.errorText,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
        decoration: InputDecoration(
          errorText: errorText,
          suffixIconConstraints:
              const BoxConstraints(minHeight: 20, minWidth: 20),
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
          hintText: hintText,
          isDense: true, // Added this
          contentPadding: const EdgeInsets.only(left: 3, bottom: 3),
          enabledBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
            ),
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          suffixIcon: suffixIcon ??
              const SizedBox(
                height: 18,
                width: 18,
              ),
        ),
      ),
    );
  }
}

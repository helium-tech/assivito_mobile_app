import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    required this.hintText,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
        decoration: InputDecoration(
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

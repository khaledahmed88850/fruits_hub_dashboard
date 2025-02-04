import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon,
      required this.onSaved,  this.obscureText = false,  this.maxLines = 1});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        maxLines: maxLines,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'برجاء ادخال البيانات';
          }
          return null;
        },
        keyboardType: textInputType,
        decoration: InputDecoration(
            suffixIconColor: const Color(0xffC9CECF),
            suffixIcon: suffixIcon,
            fillColor: const Color(0xffF9FAFA),
            hintText: hintText,
            hintStyle: Styles.bold13.copyWith(color: const Color(0xff949D9E)),
            border: buildBorder(),
            enabledBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
          color: Color.fromARGB(169, 86, 179, 209),
          width: 3),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

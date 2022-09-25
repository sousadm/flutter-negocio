import 'package:flutter/material.dart';

import '../../config/custom_color.dart';

class CustomTextSearch extends StatelessWidget {
  final String? hintText;

  const CustomTextSearch({
    super.key,
    this.hintText = 'Pesquise aqui ...',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: CustomColors.customContrastColor,
            size: 21,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}

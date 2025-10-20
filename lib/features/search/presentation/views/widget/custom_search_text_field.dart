import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(Colors.white),
          focusedBorder: buildOutlineInputBorder(Colors.green),
          hintText: "Search",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color));
  }
}

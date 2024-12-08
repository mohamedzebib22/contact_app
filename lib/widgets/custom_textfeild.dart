import 'package:contact/constants/const.dart';
import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  CustomTextfeild({
    super.key,
    required this.hint,
    required this.onChanged,
  });
  
  Function(String) onChanged;
  String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      style: TextStyle(
          color: Colors.white, fontSize: 16,),
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kTextColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: kTextColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: kTextColor))),
          
      onChanged: onChanged,
    );
  }
}

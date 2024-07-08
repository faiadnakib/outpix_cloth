import 'package:e_com_app_outpix/consts/consts.dart';
import 'package:flutter/material.dart';
Widget customTextField({String? title,String? hint,controller,}){
  return Column(
    children: [
      title!.text.color(Colors.deepPurple).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration:  InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: Colors.grey[100],
          filled: true,
          border: InputBorder.none,
            focusedBorder :OutlineInputBorder(borderSide: BorderSide(color : redColor))
        ),

      )
    ],
  );
}
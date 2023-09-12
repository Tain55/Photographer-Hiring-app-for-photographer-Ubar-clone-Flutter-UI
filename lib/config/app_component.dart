import 'package:flutter/material.dart';

class AppComponents{

  inputText({hintText, labelText, inputType, maxLine, controller, validator,}){
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      validator: validator,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: "$hintText",
        labelText: "$labelText",
        border: const OutlineInputBorder(),
      ),
    );
  }

}
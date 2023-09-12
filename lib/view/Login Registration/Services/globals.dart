import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String baseURL = "http://127.0.0.1:8000/api/";
const Map<String,String> headers = {"Content-Type":"application/json"};

errorSankBar(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(text),backgroundColor: Colors.red,duration: const Duration(seconds: 1),)
  );
}
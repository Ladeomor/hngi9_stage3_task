import 'package:flutter/material.dart';

Widget progressBar(){
  return Center(
    child: TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) => CircularProgressIndicator(
        value: value,
        color: Colors.red,

    )),
  );
}
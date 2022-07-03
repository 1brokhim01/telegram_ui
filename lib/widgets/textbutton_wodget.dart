import 'package:flutter/material.dart';

textButton({String? txt, TextStyle? stylee}) {
  return TextButton(
    onPressed: () {},
    child: Text(
      "$txt",
      style: stylee,
    ),
  );
}

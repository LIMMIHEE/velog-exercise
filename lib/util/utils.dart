import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 2000),
      content: Text(text),
    ));
  }

  static void showSnackAndPrint(BuildContext context, String text) {
    Utils.showSnackBar(context, text);
    print(text);
  }
}

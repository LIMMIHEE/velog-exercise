import 'package:flutter/material.dart';

class MainOutLineButton extends StatelessWidget {
  const MainOutLineButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () => onTap(), child: Text(text));
  }
}

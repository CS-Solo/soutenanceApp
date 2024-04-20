import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.textButton,
      this.onPressed,
      required this.isLoading});

  final String textButton;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: isLoading ? const CircularProgressIndicator() : Text(textButton),
    );
  }
}

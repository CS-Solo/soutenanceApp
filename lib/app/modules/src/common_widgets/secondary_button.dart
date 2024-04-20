import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key,
      required this.textButton,
      this.onPressed,
      required this.isLoading});

  final String textButton;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Theme.of(context).colorScheme.primary,
        shape: const StadiumBorder(),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: isLoading
          ? CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            )
          : Text(textButton),
    );
  }
}

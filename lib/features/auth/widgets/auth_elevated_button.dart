import 'package:flutter/material.dart';

class AuthElevatedButton extends StatelessWidget {
  final void Function()? onPress;
  final String text;

  const AuthElevatedButton({
    super.key,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}

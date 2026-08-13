import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed == null
            ? null
            : () {
                FocusManager.instance.primaryFocus?.unfocus();
                onPressed!();
              },
        style: ElevatedButton.styleFrom(
          // backgroundColor: AppColors.primaryButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: FittedBox(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

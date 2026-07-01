import 'package:flutter/material.dart';
import '../../../../core/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final TextInputAction? textInputAction;
  final bool? readOnly;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.textInputAction,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.dotInactive.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        readOnly: readOnly ?? false,
        textInputAction: textInputAction,
        validator: validator,
        controller: controller,
        obscureText: isPassword,
        style: const TextStyle(),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            // color: AppColors.textSecondary,
            fontSize: 16,
          ),
          prefixIcon: Icon(prefixIcon),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}

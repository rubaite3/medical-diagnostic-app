import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;

  const LoadingOverlay({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        opacity: isLoading ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: Container(
          color: Colors.black.withAlpha(80),
          child: Center(
            child: Lottie.asset(
              'assets/lottie/Live chatbot.json',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

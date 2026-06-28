import 'package:flutter/material.dart';

class HomeActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData icon;

  const HomeActionButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      height: 54, 
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20), 
            const SizedBox(width: 10),
            Text(
              text,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeHeroImage extends StatelessWidget {
  const HomeHeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Image.asset(
      "assets/images/nobghome.png",
      height: 280, 
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: colorScheme.primary.withValues(alpha: 0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.medical_services, 
          size: 100, 
          color: colorScheme.primary,
        ),
      ),
    );
  }
}


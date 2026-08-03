import 'package:flutter/material.dart';
import '../../../../core/theme/colors.dart'; 

class ProfileDropdownField extends StatelessWidget {
  final String hint;
  final String value;
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final IconData? prefixIcon; 

  const ProfileDropdownField({
    super.key,
    required this.hint,
    required this.value,
    required this.items,
    required this.onChanged,
    this.prefixIcon, 
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      decoration: BoxDecoration(
       
        color: AppColors.dotInactive.withValues(alpha:0.6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha:0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: DropdownButtonFormField<String>(
        initialValue: value,
        items: items,
        onChanged: onChanged,
        isExpanded: true,
        icon: const Icon(Icons.arrow_drop_down),
        style: theme.textTheme.bodyLarge?.copyWith(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintText: hint,
         
           prefixIcon: prefixIcon != null ? Icon(prefixIcon, size: 28) : null, 
          border: InputBorder.none,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14, 
          ),
        ),
        
        selectedItemBuilder: (BuildContext context) {
          return items.map<Widget>((DropdownMenuItem<String> item) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.value ?? '',
                style: const TextStyle(fontSize: 16),
              ),
            );
          }).toList();
        },
      ),
    );
  }
}

class ProfileCheckboxRow extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const ProfileCheckboxRow({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Checkbox(
            value: value,
            activeColor: colorScheme.primary, 
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

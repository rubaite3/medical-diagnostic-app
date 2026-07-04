import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';

class AppUpdatesScreen extends StatelessWidget {
  const AppUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(SettingsStrings.appUpdates),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png', // استخدم صورة موجودة في مشروعك
                height: 150,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.update, size: 100),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              SettingsStrings.updatesTitle,
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              SettingsStrings.updatesDesc,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(SettingsStrings.whatIsNew, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(SettingsStrings.historyBack, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text(SettingsStrings.languagesAdded, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 24),
            Text(SettingsStrings.questionsFeedback, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(SettingsStrings.contactSupport, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 40),
            CustomButton(
              text: SettingsStrings.readMore,
              onPressed: () {
             
              },
            ),
          ],
        ),
      ),
    );
  }
}
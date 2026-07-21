import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';

class AppUpdatesScreen extends StatelessWidget {
  const AppUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appUpdates),
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
                "assets/icons/appLogo-removebg-solo.png",
                height: 150,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.update, size: 100),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              S.of(context).updatesTitle,
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).updatesDesc,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(S.of(context).whatIsNew, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(S.of(context).historyBack, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text(S.of(context).languagesAdded, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 24),
            Text(S.of(context).questionsFeedback, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(S.of(context).contactSupport, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 40),
            CustomButton(
              text: S.of(context).readMore,
              onPressed: () {
                
                context.push(
                  '/settings/webview',
                  extra: {
                    'title': S.of(context).appUpdates, 
                    'url': 'https://vitalia.com/updates', 
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
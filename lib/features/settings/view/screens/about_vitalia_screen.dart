import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import '../widgets/settings_item_widget.dart';

class AboutAdaScreen extends StatelessWidget {
  const AboutAdaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(SettingsStrings.aboutAda),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ada App', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.business, size: 40),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ada Health GmbH', style: theme.textTheme.bodyLarge),
                          const SizedBox(height: 4),
                          Text('Neue Grünstraße 17\n10179 Berlin\nGermany', style: theme.textTheme.bodyMedium),
                          const SizedBox(height: 4),
                          Text('support@ada.com', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          SettingsItemWidget(title: 'Terms and conditions', onTap: () {  }),
          SettingsItemWidget(title: 'Privacy Policy', onTap: () {  }),
          SettingsItemWidget(title: 'Third-party software', onTap: () {  }),
          SettingsItemWidget(title: 'Medical quality', onTap: () { }),
        ],
      ),
    );
  }
}
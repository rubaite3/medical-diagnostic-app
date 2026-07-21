import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import '../widgets/settings_item_widget.dart';
import 'webview_screen.dart'; 

class AboutVitaliaScreen extends StatelessWidget {
  const AboutVitaliaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).aboutVitalia),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Vitalia App', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
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
                          Text('Vitalia GmbH', style: theme.textTheme.bodyLarge),
                          const SizedBox(height: 4),
                          Text('Neue Grünstraße 17\n10179 Berlin\nGermany', style: theme.textTheme.bodyMedium),
                          const SizedBox(height: 4),
                          Text('support@vitalia.com', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          SettingsItemWidget(
            title: 'Terms and conditions',
            onTap: () {
            
              context.push(
                '/settings/webview',
                extra: {'title': 'Terms and conditions', 'url': ''}, 
               );
            },
          ),
          SettingsItemWidget(
            title: 'Privacy Policy',
            onTap: () {
              
              context.push(
                '/settings/webview',
                extra: {'title': 'Privacy Policy', 'url': ''}, 
               );
            },
          ),
          SettingsItemWidget(
            title: 'Third-party software',
            onTap: () {
             
              context.push(
                '/settings/webview',
                extra: {'title': 'Third-party software', 'url': ''}, 
               );
            },
          ),
          SettingsItemWidget(
            title: 'Medical quality',
            onTap: () {
             
              context.push(
                '/settings/webview',
                extra: {'title': 'Medical quality', 'url': ''}, 
               );
            },
          ),
        ],
      ),
    );
  }
}
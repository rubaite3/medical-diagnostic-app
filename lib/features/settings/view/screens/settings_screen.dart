import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/consts/strings.dart';
import '../../../../core/navigation/route_paths.dart';
import '../../../auth/controllers/auth_bloc/auth_bloc.dart';
import '../widgets/settings_item_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text(SettingsStrings.settingsTitle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSectionTitle(context, SettingsStrings.accountSettings),
            SettingsItemWidget(
              title: SettingsStrings.accountLogin,
              onTap: () => context.goNamed(RoutePaths.account),
            ),
            SettingsItemWidget(
              title: SettingsStrings.language,
              onTap: () => context.goNamed(RoutePaths.language),
            ),
            
            const SizedBox(height: 24),
            _buildSectionTitle(context, SettingsStrings.support),
            SettingsItemWidget(
              title: SettingsStrings.feedback,
              onTap: () {}, // جاهز للربط
            ),
            SettingsItemWidget(
              title: SettingsStrings.appUpdates,
              onTap: () => context.goNamed(RoutePaths.appUpdates),
            ),
            SettingsItemWidget(
              title: SettingsStrings.aboutAda,
              onTap: () => context.goNamed(RoutePaths.aboutAda),
            ),
            SettingsItemWidget(
              title: SettingsStrings.safetyInfo,
              onTap: () => context.goNamed(RoutePaths.safetyInfo),
            ),
            
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  // استخدام حقيقي لـ AuthBloc لتسجيل الخروج
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                },
                child: Text(
                  SettingsStrings.logout,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                SettingsStrings.version,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
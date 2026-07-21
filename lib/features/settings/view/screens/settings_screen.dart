import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
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
        title: Text(S.of(context).settingsTitle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSectionTitle(context, S.of(context).accountSettings),
            SettingsItemWidget(
              title: S.of(context).accountLogin,
              onTap: () => context.goNamed(RoutePaths.account),
            ),
            SettingsItemWidget(
              title: S.of(context).language,
              onTap: () => context.goNamed(RoutePaths.language),
            ),

            const SizedBox(height: 24),
            _buildSectionTitle(context, S.of(context).support),
            SettingsItemWidget(
              title: S.of(context).appUpdates,
              onTap: () => context.goNamed(RoutePaths.appUpdates),
            ),
            SettingsItemWidget(
              title: S.of(context).aboutVitalia,
              onTap: () => context.goNamed(RoutePaths.aboutVitalia),
            ),
            SettingsItemWidget(
              title: S.of(context).safetyInfo,
              onTap: () => context.goNamed(RoutePaths.safetyInfo),
            ),

            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocListener<AuthBloc, AuthState>(
                listenWhen: (previous, current) => !current.op.isNeutral,
                listener: (context, state) {
                  Utils.showToast(
                    context,
                    message: state.statusMessage,
                    level: Utils.mapOp(state.op),
                  );
                  if (state.statusMessage == S.of(context).authLoggedOut) {
                    context.goNamed(RoutePaths.login);
                  }
                },
                child: InkWell(
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.logout());
                  },
                  child: Text(
                    S.of(context).logout,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                S.of(context).version,
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

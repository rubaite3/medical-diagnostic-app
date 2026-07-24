import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import '../../../../core/utils/utils.dart';
import '../../../auth/controllers/auth_bloc/auth_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final userEmail = state.user?.email ?? "Not logged in";

        const String userId = "d34ac463-c0d3-40a1-b094-8cd034b5eb1b";

        return Scaffold(
          backgroundColor: colorScheme.surface,
          appBar: AppBar(
            title: Text(S.of(context).accountTitle),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).signedUpWithGoogle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  userEmail,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(height: 32),

                Text(
                  S.of(context).userIdLabel,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(userId, style: theme.textTheme.bodyMedium),
                    ),
                    IconButton(
                      icon: const Icon(Icons.copy, size: 20),
                      color: colorScheme.primary,
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: userId));
                        Utils.showToast(
                          context,
                          message: S.of(context).accountUserIdCopied,
                        );
                      },
                    ),
                  ],
                ),
                const Divider(height: 32),

                InkWell(
                  onTap: () {
                    Utils.showToast(
                      context,
                      message: S.of(context).accountDeleteUnavailable,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).deleteAccount,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                        Icon(
                          Icons.delete_outline,
                          color: theme.colorScheme.error,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

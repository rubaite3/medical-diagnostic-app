import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/session_history_cubit/session_history_cubit.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';

class _MockSession {
  const _MockSession({
    required this.sessionId,
    required this.createdAt,
    required this.status,
    required this.topDisease,
    required this.topProbability,
  });

  final String sessionId;
  final String createdAt;
  final String status;
  final String topDisease;
  final double topProbability;
}

class SessionHistoryScreen extends StatefulWidget {
  const SessionHistoryScreen({super.key});

  @override
  State<SessionHistoryScreen> createState() => _SessionHistoryScreenState();
}

class _SessionHistoryScreenState extends State<SessionHistoryScreen> {
  @override
  void initState() {
    _sessionHistoryCubit.fetchSessions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(S.of(context).sessionHistoryTitle),
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
      ),
      body: BlocBuilder<SessionHistoryCubit, SessionHistoryState>(
        bloc: _sessionHistoryCubit,
        builder: (context, state) => SafeArea(
          child: state.op.isLoading
              ? Center(child: CircularProgressIndicator())
              : state.sessions.isEmpty
              ? Center(
                  child: Text(
                    S.of(context).noSessionsYet,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.sessions.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final session = state.sessions[index];
                    final barColor = Utils.colorFromProbability(
                      context,
                      session.topProbability ?? 0.0,
                    );
                    return Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest.withValues(
                          alpha: 0.3,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: colorScheme.outline.withValues(alpha: 0.2),
                        ),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "${S.of(context).sessionIdLabel}: ${session.sessionId}",
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: session.status == "completed"
                                      ? Colors.green.withValues(alpha: 0.15)
                                      : Colors.orange.withValues(alpha: 0.15),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  session.status ?? "",
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: session.status == "completed"
                                        ? Colors.green
                                        : Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            session.createdAt ?? "",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            session.topDisease ?? "",
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: LinearProgressIndicator(
                                    value: session.topProbability,
                                    minHeight: 8,
                                    color: barColor,
                                    backgroundColor: colorScheme.outline
                                        .withValues(alpha: 0.15),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "${((session.topProbability ?? 0.0) * 100).toInt()}%",
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: barColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          SizedBox(
                            width: double.infinity,
                            child: FilledButton.icon(
                              onPressed: () {
                                context.pushNamed(
                                  RoutePaths.fullReport,
                                  queryParameters: {
                                    "sessionId": session.sessionId,
                                  },
                                );
                              },
                              icon: const Icon(Icons.visibility_outlined),
                              label: Text(S.of(context).viewReport),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }

  final _sessionHistoryCubit = SessionHistoryCubit();
}

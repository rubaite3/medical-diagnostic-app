import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class PreliminaryResultsScreen extends StatelessWidget {
  const PreliminaryResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: BlocBuilder<DiagnosisCubit, DiagnosisState>(
          builder: (context, state) {
            final summary =
                state.currentFollowUp?.diagnosisSummary;
            final diseases = summary?.probableDiseases ?? [];

            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 24.0, vertical: 16),
              child: Column(
                children: [
                  DiagnosisPageHeader(
                    title: DiagnosisStrings.preliminaryResultsTitle,
                    subtitle: DiagnosisStrings.preliminaryResultsSubtitle,
                    icon: Icons.analytics_outlined,
                  ),
                  const SizedBox(height: 24),

                  Expanded(
                    child: diseases.isEmpty
                        ? Center(
                            child: Text(
                              "No results available.",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: diseases.length,
                            itemBuilder: (context, index) {
                              final d = diseases[index];
                              return ProbabilityBar(
                                diseaseName: d.name,
                                probability: d.probability,
                                colorCode: d.colorCode,
                              );
                            },
                          ),
                  ),

                  const SizedBox(height: 16),

                  // Disclaimer
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer
                          .withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: colorScheme.primary.withValues(alpha: 0.2)),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline,
                            color: colorScheme.primary, size: 18),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "These are preliminary results based on AI analysis. "
                            "Please consult a doctor for a confirmed diagnosis.",
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  CustomButton(
                    text: DiagnosisStrings.viewFullReportBtn,
                    onPressed: () =>
                        context.goNamed(RoutePaths.diagnosisPayment),
                  ),
                  const SizedBox(height: 12),

                  TextButton(
                    onPressed: () {
                      context.read<DiagnosisCubit>().reset();
                      context.goNamed(RoutePaths.homeScreen);
                    },
                    child: Text(
                      DiagnosisStrings.startNewDiagnosisBtn,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
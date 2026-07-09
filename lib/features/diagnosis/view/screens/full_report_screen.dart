import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class FullReportScreen extends StatelessWidget {
  const FullReportScreen({super.key});

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
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined, color: colorScheme.onSurface),
            onPressed: () {
             
            },
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<DiagnosisCubit, DiagnosisState>(
          builder: (context, state) {
            if (state.op.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            final report = state.finalReport;

            if (report == null) {
              return DiagnosisErrorWidget(
                message: DiagnosisStrings.errorGeneral,
                onRetry: () =>
                    context.read<DiagnosisCubit>().getReport(),
              );
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: 24.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DiagnosisPageHeader(
                    title: DiagnosisStrings.fullReportTitle,
                    subtitle: DiagnosisStrings.fullReportSubtitle,
                    icon: Icons.summarize_outlined,
                  ),
                  const SizedBox(height: 32),

                  // Diagnosis Details Section
                  DiagnosisSectionLabel(
                      label: DiagnosisStrings.diagnosisDetailsLabel),
                  _ReportSection(
                    content: report['diagnosis_details']?.toString() ??
                        "Details not available.",
                    icon: Icons.medical_information_outlined,
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                  const SizedBox(height: 20),

                  // Recommendations Section
                  DiagnosisSectionLabel(
                      label: DiagnosisStrings.recommendationsLabel),
                  _ReportSection(
                    content: report['recommendations']?.toString() ??
                        "Recommendations not available.",
                    icon: Icons.recommend_outlined,
                    colorScheme: colorScheme,
                    theme: theme,
                  ),
                  const SizedBox(height: 20),

                  // Consult Doctor Section
                  DiagnosisSectionLabel(
                      label: DiagnosisStrings.consultDoctorLabel),
                  _ConsultDoctorCard(
                    colorScheme: colorScheme,
                    theme: theme,
                    content: report['consult_doctor']?.toString() ??
                        "Please consult a qualified healthcare professional for further evaluation.",
                  ),
                  const SizedBox(height: 32),

                  // Download PDF Button
                  CustomButton(
                    text: DiagnosisStrings.downloadReportBtn,
                    onPressed: () {
                      // TODO: Implement PDF download
                    },
                  ),
                  const SizedBox(height: 12),

                  // Start New Diagnosis
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        context.read<DiagnosisCubit>().reset();
                        context.goNamed(RoutePaths.homeScreen);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: colorScheme.primary.withValues(alpha: 0.5)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        DiagnosisStrings.startNewDiagnosisBtn,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ReportSection extends StatelessWidget {
  final String content;
  final IconData icon;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _ReportSection({
    required this.content,
    required this.icon,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.25)),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colorScheme.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              content,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ConsultDoctorCard extends StatelessWidget {
  final ColorScheme colorScheme;
  final ThemeData theme;
  final String content;

  const _ConsultDoctorCard({
    required this.colorScheme,
    required this.theme,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colorScheme.primary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.local_hospital_outlined,
                color: colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              content,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/full_report_cubit/full_report_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/repos/diagnosis_repo.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

import '../../../../core/utils/utils.dart';
import '../../../diagnosis/models/diagnosis_models.dart';

class FullReportScreen extends StatefulWidget {
  const FullReportScreen({super.key, required this.sessionId});

  final String sessionId;

  @override
  State<FullReportScreen> createState() => _FullReportScreenState();
}

class _FullReportScreenState extends State<FullReportScreen> {
  late final FullReportCubit _fullReportCubit;

  @override
  void initState() {
    super.initState();
    _fullReportCubit = FullReportCubit(
      sessionId: widget.sessionId,
      repo: DiagnosisRepo(),
    );
    _fullReportCubit.loadReport();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: colorScheme.onSurface),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined, color: colorScheme.onSurface),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder<FullReportCubit, FullReportState>(
        bloc: _fullReportCubit,
        builder: (context, state) {
          if (state.status == ReportStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          final report = state.finalReport;
          if (report == null) {
            return DiagnosisErrorWidget(
              message: state.statusMessage.isEmpty ? S.of(context).errorGeneral : state.statusMessage,
              onRetry: () => _fullReportCubit.loadReport(),
            );
          }

          final isReviewed = report.status == "reviewed";

          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Status Header
                  Text(
                    isReviewed ? S.of(context).reportStatusReviewed : S.of(context).reportStatusUnderReview,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    S.of(context).reportStatusSubtitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Doctor Card
                  _DoctorCard(
                    doctorName: S.of(context).mockDoctorName,
                    specialist: S.of(context).mockDoctorSpecialist,
                    isAvailable: true,
                    expectedTime: S.of(context).mockExpectedTime,
                    lastLogin: S.of(context).mockLastLogin,
                  ),
                  const SizedBox(height: 32),

                  // Process Steps
                  _ProcessStep(
                    title: S.of(context).stepPaymentSuccess,
                    isCompleted: true,
                  ),
                  _ProcessStep(
                    title: S.of(context).stepAiAnalysis,
                    isCompleted: true,
                    showContent: true,
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...report.diagnoses.map((d) => _DetailedDiagnosisRow(
                              name: d.diseaseNameLocal ?? d.diseaseName ?? "",
                              probability: d.probability ?? 0.0,
                            )),
                        if (report.advice != null && report.advice!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${S.of(context).adviceLabel}:",
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorScheme.primary,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  report.advice!,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  _ProcessStep(
                    title: isReviewed ? S.of(context).stepDoctorReview : S.of(context).stepDoctorReviewInProgress,
                    isCompleted: isReviewed,
                    isInProgress: !isReviewed,
                  ),
                  _ProcessStep(
                    title: S.of(context).stepReceivePdf,
                    isCompleted: false,
                    isLast: true,
                    stepNumber: 4,
                  ),

                  const SizedBox(height: 32),

                  // PDF Download Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton.icon(
                      onPressed: state.isDownloading ? null : () => _fullReportCubit.downloadReport(),
                      icon: state.isDownloading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                            )
                          : const Icon(Icons.picture_as_pdf_outlined),
                      label: Text(
                        state.isDownloading ? S.of(context).downloadingReportBtn : S.of(context).downloadReportBtn,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primary,
                        foregroundColor: colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Start New Button
                  TextButton(
                    onPressed: () => context.goNamed(RoutePaths.homeScreen),
                    child: Text(S.of(context).startNewDiagnosisBtn),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DoctorCard extends StatelessWidget {
  final String? doctorName;
  final String? specialist;
  final bool isAvailable;
  final String expectedTime;
  final String lastLogin;

  const _DoctorCard({
    this.doctorName,
    this.specialist,
    this.isAvailable = false,
    required this.expectedTime,
    required this.lastLogin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).doctorInCharge,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 32),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName ?? S.of(context).noDoctorAssigned,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (specialist != null)
                      Text(
                        specialist!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              if (isAvailable)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    S.of(context).doctorAvailable,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _DoctorInfoItem(
                label: S.of(context).expectedReviewTime,
                value: expectedTime,
                icon: Icons.access_time,
              ),
              _DoctorInfoItem(
                label: S.of(context).lastLogin,
                value: lastLogin,
                icon: Icons.login,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DoctorInfoItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _DoctorInfoItem({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
            const SizedBox(width: 4),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _ProcessStep extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final bool isInProgress;
  final bool isLast;
  final int? stepNumber;
  final Widget? content;
  final bool showContent;

  const _ProcessStep({
    required this.title,
    this.isCompleted = false,
    this.isInProgress = false,
    this.isLast = false,
    this.stepNumber,
    this.content,
    this.showContent = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: isCompleted
                      ? Colors.green
                      : (isInProgress ? colorScheme.primary : colorScheme.surfaceContainerHighest),
                  shape: BoxShape.circle,
                ),
                child: isCompleted
                    ? const Icon(Icons.check, size: 16, color: Colors.white)
                    : Center(
                        child: stepNumber != null
                            ? Text(
                                stepNumber.toString(),
                                style: TextStyle(
                                  color: isInProgress ? Colors.white : colorScheme.onSurfaceVariant,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                      ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: isCompleted ? Colors.green : colorScheme.outlineVariant,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    title,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: isCompleted || isInProgress ? FontWeight.bold : FontWeight.normal,
                      color: isCompleted || isInProgress ? colorScheme.onSurface : colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                if (showContent && content != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: content!,
                  ),
                if (!isLast) const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailedDiagnosisRow extends StatelessWidget {
  final String name;
  final double probability;

  const _DetailedDiagnosisRow({required this.name, required this.probability});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final color = Utils.colorFromProbability(context, probability);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "${(probability * 100).toStringAsFixed(0)}%",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: probability,
              minHeight: 6,
              backgroundColor: colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          ),
        ],
      ),
    );
  }
}
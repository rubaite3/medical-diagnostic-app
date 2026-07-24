import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/controllers/loader_cubit/loader_cubit.dart';
import 'package:medical_diagnostic_app1/core/dependencies/service_locator.dart';
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
  @override
  void initState() {
    if (widget.sessionId.isNotEmpty) {
      _fullReportCubit = FullReportCubit(
        sessionId: widget.sessionId,
        repo: DiagnosisRepo(),
      );
    }
    _fullReportCubit.loadReport();
    super.initState();
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
        actions: [
          IconButton(
            icon: Icon(Icons.share_outlined, color: colorScheme.onSurface),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SizedBox(
          width: double.infinity,
          child: BlocConsumer<FullReportCubit, FullReportState>(
            bloc: _fullReportCubit,
            listenWhen: (previous, current) =>
                current.status == ReportStatus.failure &&
                previous.status != ReportStatus.failure,
            listener: (context, state) {
              Utils.showToast(context, message: state.statusMessage, level: -1);
            },
            builder: (context, state) => FloatingActionButton.extended(
              extendedPadding: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: state.isDownloading
                  ? null
                  : () {
                      _fullReportCubit.downloadReport();
                    },
              label: state.isDownloading
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            value: state.downloadProgress > 0
                                ? state.downloadProgress
                                : null,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          S.of(context).downloadingReportBtn,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      S.of(context).downloadReportBtn,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocBuilder<FullReportCubit, FullReportState>(
          bloc: _fullReportCubit,
          builder: (context, state) {
            final report = state.finalReport;
            if (state.status == ReportStatus.loading) {
              return Center(child: CircularProgressIndicator());
            } else if (report == null) {
              return DiagnosisErrorWidget(
                message: S.of(context).errorGeneral,
                onRetry: () => _fullReportCubit.loadReport(),
              );
            } else {
              final diagnoses = report.diagnoses;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DiagnosisPageHeader(
                      title: S.of(context).fullReportTitle,
                      subtitle: S.of(context).fullReportSubtitle,
                      icon: Icons.summarize_outlined,
                    ),
                    const SizedBox(height: 24),

                    if (report.patientName != null)
                      _MetaRow(
                        label: S.of(context).patientLabel,
                        value: report.patientName!,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                    if (report.completedAt != null)
                      _MetaRow(
                        label: S.of(context).completedAtLabel,
                        value: report.completedAt!,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                    const SizedBox(height: 16),

                    DiagnosisSectionLabel(label: S.of(context).diagnosesLabel),
                    if (diagnoses.isEmpty)
                      Text(
                        S.of(context).noDiagnosesAvailable,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      )
                    else
                      ...diagnoses.map(
                        (d) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: _DiagnosisCard(
                            diseaseName:
                                d.diseaseNameLocal ?? d.diseaseName ?? "",
                            probability: d.probability ?? 0.0,
                            confidence: d.confidence,
                            specialist: d.specialistLocal ?? d.specialist,
                            advice: d.adviceLocal ?? d.advice,
                            colorScheme: colorScheme,
                            theme: theme,
                          ),
                        ),
                      ),
                    const SizedBox(height: 20),

                    if (report.conversation.isNotEmpty) ...[
                      DiagnosisSectionLabel(
                        label: S.of(context).conversationLabel,
                      ),
                      _ConversationCard(
                        conversation: report.conversation,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                      const SizedBox(height: 20),
                    ],

                    DiagnosisSectionLabel(
                      label: S.of(context).consultDoctorLabel,
                    ),
                    _ConsultDoctorCard(
                      colorScheme: colorScheme,
                      theme: theme,
                      content: S.of(context).consultDoctorDefault,
                    ),
                    const SizedBox(height: 32),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          context.goNamed(RoutePaths.homeScreen);
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: colorScheme.primary.withValues(alpha: 0.5),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          S.of(context).startNewDiagnosisBtn,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 96),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  late final FullReportCubit _fullReportCubit;
}

class _MetaRow extends StatelessWidget {
  final String label;
  final String value;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _MetaRow({
    required this.label,
    required this.value,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiagnosisCard extends StatelessWidget {
  final String diseaseName;
  final double probability;
  final String? confidence;
  final String? specialist;
  final String? advice;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _DiagnosisCard({
    required this.diseaseName,
    required this.probability,
    this.confidence,
    this.specialist,
    this.advice,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final percent = (probability * 100).toStringAsFixed(0);
    final color = Utils.colorFromProbability(context, probability);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  diseaseName,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "$percent%",
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: probability,
            backgroundColor: colorScheme.surfaceContainerHighest,
            color: color,
            minHeight: 6,
            borderRadius: BorderRadius.circular(4),
          ),
          if (confidence != null) ...[
            const SizedBox(height: 10),
            Text(
              "${S.of(context).confidenceLabel}: $confidence",
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          if (specialist != null) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(
                  Icons.local_hospital_outlined,
                  size: 16,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    "${S.of(context).specialistLabel}: $specialist",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (advice != null && advice!.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              "${S.of(context).adviceLabel}:",
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              advice!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ConversationCard extends StatelessWidget {
  final List<ConversationTurn> conversation;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _ConversationCard({
    required this.conversation,
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
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: conversation.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final turn = conversation[index];
          final isUser = turn.role == "user";
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: isUser
                      ? colorScheme.primary.withValues(alpha: 0.12)
                      : colorScheme.tertiary.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  isUser ? Icons.person_outline : Icons.smart_toy_outlined,
                  size: 16,
                  color: isUser ? colorScheme.primary : colorScheme.tertiary,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  turn.text ?? "",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          );
        },
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
            child: Icon(
              Icons.local_hospital_outlined,
              color: colorScheme.primary,
              size: 20,
            ),
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

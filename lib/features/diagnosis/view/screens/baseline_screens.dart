import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/controllers/auth_bloc/auth_bloc.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class BaselineStepScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget content;
  final VoidCallback onNext;
  final bool isLast;

  const BaselineStepScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.content,
    required this.onNext,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorScheme.onSurface,
          ),
          onPressed: () {
            if (GoRouterState.of(context).uri.path ==
                RoutePaths.baselineGender) {
              context.read<DiagnosisCubit>().reset();
            }
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            children: [
              DiagnosisPageHeader(title: title, subtitle: subtitle, icon: icon),
              const SizedBox(height: 40),
              Expanded(child: content),
              CustomButton(
                text: isLast
                    ? S.of(context).diagnosisFinishBaselineBtn
                    : S.of(context).diagnosisNextBtn,
                onPressed: onNext,
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. Gender Screen
class GenderSelectionScreen extends StatelessWidget {
  const GenderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisGenderTitle,
          subtitle: S.of(context).diagnosisGenderSubtitle,
          icon: Icons.person_outline_rounded,
          onNext: () {
            if (state.gender == null) {
              Utils.showToast(
                context,
                message: S.of(context).diagMustChooseGender,
                level: -1,
              );
            } else {
              context.pushNamed(RoutePaths.baselineBirthDate);
            }
          },
          content: Column(
            children: [
              _SelectionTile(
                label: S.of(context).genderMale,
                isSelected: state.gender == 'male',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(
                  gender: 'male',
                ),
              ),
              const SizedBox(height: 12),
              _SelectionTile(
                label: S.of(context).genderFemale,
                isSelected: state.gender == 'female',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(
                  gender: 'female',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// 1b. Birth Date Screen (date picker)
class BirthDateScreen extends StatelessWidget {
  const BirthDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        final displayDate =
            state.birthDate != null && state.birthDate!.isNotEmpty
            ? DateFormat('MM/dd/yyyy').format(DateTime.parse(state.birthDate!))
            : "";

        return BaselineStepScreen(
          title: S.of(context).diagnosisBirthDateTitle,
          subtitle: S.of(context).diagnosisBirthDateSubtitle,
          icon: Icons.cake_outlined,
          onNext: () {
            if (state.birthDate == null || state.birthDate!.isEmpty) {
              Utils.showToast(
                context,
                message: S.of(context).diagMustEnterBirthDate,
                level: -1,
              );
            } else {
              context.pushNamed(RoutePaths.baselineOccupation);
            }
          },
          content: GestureDetector(
            onTap: () async {
              final theme = Theme.of(context);
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now().subtract(
                  const Duration(days: 365 * 25),
                ),
                firstDate: DateTime(1920),
                lastDate: DateTime.now(),
                builder: (context, child) {
                  return Theme(
                    data: theme.copyWith(colorScheme: theme.colorScheme),
                    child: child!,
                  );
                },
              );
              if (picked != null) {
                context.read<DiagnosisCubit>().updateBaseline(
                  birthDate: picked.toIso8601String(),
                );
              }
            },
            child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: displayDate.isNotEmpty
                        ? colorScheme.primary
                        : colorScheme.outline.withValues(alpha: 0.2),
                    width: displayDate.isNotEmpty ? 1.5 : 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: displayDate.isNotEmpty
                          ? colorScheme.primary
                          : colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        displayDate.isNotEmpty
                            ? displayDate
                            : S.of(context).diagnosisBirthDateHint,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: displayDate.isNotEmpty
                              ? colorScheme.onSurface
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    if (displayDate.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          context.read<DiagnosisCubit>().updateBaseline(
                            birthDate: "",
                          );
                        },
                        child: Icon(
                          Icons.close,
                          size: 18,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// 1c. Occupation Screen (text input)
class OccupationScreen extends StatefulWidget {
  const OccupationScreen({super.key});

  @override
  State<OccupationScreen> createState() => _OccupationScreenState();
}

class _OccupationScreenState extends State<OccupationScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = context.read<DiagnosisCubit>().state.patientJob ?? "";
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisOccupationTitle,
          subtitle: S.of(context).diagnosisOccupationSubtitle,
          icon: Icons.work_outline_rounded,
          onNext: () {
            final value = _controller.text.trim();
            if (value.isEmpty) {
              Utils.showToast(
                context,
                message: S.of(context).diagMustEnterOccupation,
                level: -1,
              );
            } else {
              context.read<DiagnosisCubit>().updateBaseline(patientJob: value);
              context.pushNamed(RoutePaths.baselineActivity);
            }
          },
          content: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: S.of(context).diagnosisOccupationHint,
                prefixIcon: const Icon(Icons.work_outline_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// 2. Activity Screen
class ActivitySelectionScreen extends StatelessWidget {
  const ActivitySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisActivityTitle,
          subtitle: S.of(context).diagnosisActivitySubtitle,
          icon: Icons.directions_run_rounded,
          onNext: () {
            if (state.activityLevel == null) {
              Utils.showToast(
                context,
                message: S.of(context).diagMustChooseActivity,
                level: -1,
              );
            } else {
              context.pushNamed(RoutePaths.baselineSmoker);
            }
          },
          content: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 10,
            ),

            child: Column(
              children: [
                _SelectionTile(
                  label: S.of(context).activitySedentary,
                  isSelected: state.activityLevel == 'sedentary',
                  onTap: () => context.read<DiagnosisCubit>().updateBaseline(
                    activityLevel: 'sedentary',
                  ),
                ),
                const SizedBox(height: 12),
                _SelectionTile(
                  label: S.of(context).activityModerate,
                  isSelected: state.activityLevel == 'moderate',
                  onTap: () => context.read<DiagnosisCubit>().updateBaseline(
                    activityLevel: 'moderate',
                  ),
                ),
                const SizedBox(height: 12),
                _SelectionTile(
                  label: S.of(context).activityActive,
                  isSelected: state.activityLevel == 'active',
                  onTap: () => context.read<DiagnosisCubit>().updateBaseline(
                    activityLevel: 'active',
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

// 3. Smoker Screen
class SmokerSelectionScreen extends StatelessWidget {
  const SmokerSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisSmokerTitle,
          subtitle: S.of(context).diagnosisSmokerSubtitle,
          icon: Icons.smoking_rooms_rounded,
          onNext: () => context.pushNamed(RoutePaths.baselineAlcohol),
          content: _YesNoSelection(
            value: state.isSmoker,
            onChanged: (val) =>
                context.read<DiagnosisCubit>().updateBaseline(isSmoker: val),
          ),
        );
      },
    );
  }
}

// 3b. Alcohol Screen (yes/no)
class AlcoholScreen extends StatelessWidget {
  const AlcoholScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisAlcoholTitle,
          subtitle: S.of(context).diagnosisAlcoholSubtitle,
          icon: Icons.local_bar_outlined,
          onNext: () => context.pushNamed(RoutePaths.baselineDiabetes),
          content: _YesNoSelection(
            value: state.isAlcoholic ?? false,
            onChanged: (val) =>
                context.read<DiagnosisCubit>().updateBaseline(isAlcoholic: val),
          ),
        );
      },
    );
  }
}

// 4. Diabetes Screen
class DiabetesSelectionScreen extends StatelessWidget {
  const DiabetesSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisDiabetesTitle,
          subtitle: S.of(context).diagnosisDiabetesSubtitle,
          icon: Icons.medical_services_outlined,
          onNext: () => context.pushNamed(RoutePaths.baselineHypertension),
          content: _YesNoSelection(
            value: state.hasDiabetes,
            onChanged: (val) =>
                context.read<DiagnosisCubit>().updateBaseline(hasDiabetes: val),
          ),
        );
      },
    );
  }
}

// 5. Hypertension Screen
class HypertensionSelectionScreen extends StatelessWidget {
  const HypertensionSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        final isFemale = state.gender == 'female';
        return BaselineStepScreen(
          title: S.of(context).diagnosisHypertensionTitle,
          subtitle: S.of(context).diagnosisHypertensionSubtitle,
          icon: Icons.speed_rounded,
          onNext: () => isFemale
              ? context.pushNamed(RoutePaths.baselinePregnant)
              : _finish(context),
          isLast: !isFemale,
          content: _YesNoSelection(
            value: state.hasHypertension,
            onChanged: (val) => context.read<DiagnosisCubit>().updateBaseline(
              hasHypertension: val,
            ),
          ),
        );
      },
    );
  }

  void _finish(BuildContext context) async {
    context.goNamed(RoutePaths.availableLLms);
  }
}

// 6. Pregnancy Screen (Conditional)
class PregnancySelectionScreen extends StatelessWidget {
  const PregnancySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiagnosisCubit, DiagnosisState>(
      builder: (context, state) {
        return BaselineStepScreen(
          title: S.of(context).diagnosisPregnantTitle,
          subtitle: S.of(context).diagnosisPregnantSubtitle,
          icon: Icons.child_care_rounded,
          isLast: true,
          onNext: () => _finish(context),
          content: _YesNoSelection(
            value: state.isPregnant,
            onChanged: (val) =>
                context.read<DiagnosisCubit>().updateBaseline(isPregnant: val),
          ),
        );
      },
    );
  }

  void _finish(BuildContext context) async {
    context.goNamed(RoutePaths.availableLLms);
  }
}

// Helper Widgets
class _SelectionTile extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectionTile({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primary.withValues(alpha: 0.1)
              : colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? colorScheme.primary
                : colorScheme.outline.withValues(alpha: 0.2),
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _YesNoSelection extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const _YesNoSelection({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SelectionTile(
          label: S.of(context).yes,
          isSelected: value == true,
          onTap: () => onChanged(true),
        ),
        const SizedBox(height: 12),
        _SelectionTile(
          label: S.of(context).no,
          isSelected: value == false,
          onTap: () => onChanged(false),
        ),
      ],
    );
  }
}

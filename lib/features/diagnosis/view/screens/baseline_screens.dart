import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
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
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: colorScheme.onSurface),
          onPressed: () => context.pop(),
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
                text: isLast ? DiagnosisStrings.finishBaselineBtn : DiagnosisStrings.nextBtn,
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
          title: DiagnosisStrings.genderTitle,
          subtitle: DiagnosisStrings.genderSubtitle,
          icon: Icons.person_outline_rounded,
          onNext: () => context.pushNamed(RoutePaths.baselineActivity),
          content: Column(
            children: [
              _SelectionTile(
                label: DiagnosisStrings.genderMale,
                isSelected: state.gender == 'male',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(gender: 'male'),
              ),
              const SizedBox(height: 12),
              _SelectionTile(
                label: DiagnosisStrings.genderFemale,
                isSelected: state.gender == 'female',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(gender: 'female'),
              ),
            ],
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
          title: DiagnosisStrings.activityTitle,
          subtitle: DiagnosisStrings.activitySubtitle,
          icon: Icons.directions_run_rounded,
          onNext: () => context.pushNamed(RoutePaths.baselineSmoker),
          content: Column(
            children: [
              _SelectionTile(
                label: DiagnosisStrings.activitySedentary,
                isSelected: state.activityLevel == 'sedentary',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(activityLevel: 'sedentary'),
              ),
              const SizedBox(height: 12),
              _SelectionTile(
                label: DiagnosisStrings.activityModerate,
                isSelected: state.activityLevel == 'moderate',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(activityLevel: 'moderate'),
              ),
              const SizedBox(height: 12),
              _SelectionTile(
                label: DiagnosisStrings.activityActive,
                isSelected: state.activityLevel == 'active',
                onTap: () => context.read<DiagnosisCubit>().updateBaseline(activityLevel: 'active'),
              ),
            ],
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
          title: DiagnosisStrings.smokerTitle,
          subtitle: DiagnosisStrings.smokerSubtitle,
          icon: Icons.smoking_rooms_rounded,
          onNext: () => context.pushNamed(RoutePaths.baselineDiabetes),
          content: _YesNoSelection(
            value: state.isSmoker,
            onChanged: (val) => context.read<DiagnosisCubit>().updateBaseline(isSmoker: val),
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
          title: DiagnosisStrings.diabetesTitle,
          subtitle: DiagnosisStrings.diabetesSubtitle,
          icon: Icons.medical_services_outlined,
          onNext: () => context.pushNamed(RoutePaths.baselineHypertension),
          content: _YesNoSelection(
            value: state.hasDiabetes,
            onChanged: (val) => context.read<DiagnosisCubit>().updateBaseline(hasDiabetes: val),
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
          title: DiagnosisStrings.hypertensionTitle,
          subtitle: DiagnosisStrings.hypertensionSubtitle,
          icon: Icons.speed_rounded,
          onNext: () => isFemale 
              ? context.pushNamed(RoutePaths.baselinePregnant) 
              : _finish(context),
          isLast: !isFemale,
          content: _YesNoSelection(
            value: state.hasHypertension,
            onChanged: (val) => context.read<DiagnosisCubit>().updateBaseline(hasHypertension: val),
          ),
        );
      },
    );
  }

  void _finish(BuildContext context) async {
    await context.read<DiagnosisCubit>().startDiagnosis();
    if (context.mounted) {
      context.goNamed(RoutePaths.symptomSearch);
    }
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
          title: DiagnosisStrings.pregnantTitle,
          subtitle: DiagnosisStrings.pregnantSubtitle,
          icon: Icons.child_care_rounded,
          isLast: true,
          onNext: () => _finish(context),
          content: _YesNoSelection(
            value: state.isPregnant,
            onChanged: (val) => context.read<DiagnosisCubit>().updateBaseline(isPregnant: val),
          ),
        );
      },
    );
  }

  void _finish(BuildContext context) async {
    await context.read<DiagnosisCubit>().startDiagnosis();
    if (context.mounted) {
      context.goNamed(RoutePaths.symptomSearch);
    }
  }
}

// Helper Widgets
class _SelectionTile extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectionTile({required this.label, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primary.withValues(alpha: 0.1) : colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: isSelected ? colorScheme.primary : colorScheme.outline.withValues(alpha: 0.2), width: 1.5),
        ),
        child: Row(
          children: [
            Icon(isSelected ? Icons.radio_button_checked : Icons.radio_button_off, color: isSelected ? colorScheme.primary : colorScheme.onSurfaceVariant),
            const SizedBox(width: 12),
            Text(label, style: theme.textTheme.bodyLarge?.copyWith(fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
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
        _SelectionTile(label: DiagnosisStrings.yes, isSelected: value == true, onTap: () => onChanged(true)),
        const SizedBox(height: 12),
        _SelectionTile(label: DiagnosisStrings.no, isSelected: value == false, onTap: () => onChanged(false)),
      ],
    );
  }
}
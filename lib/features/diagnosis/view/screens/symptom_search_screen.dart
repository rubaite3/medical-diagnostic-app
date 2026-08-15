import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class SymptomSearchScreen extends StatefulWidget {
  const SymptomSearchScreen({super.key});

  @override
  State<SymptomSearchScreen> createState() => _SymptomSearchScreenState();
}

class _SymptomSearchScreenState extends State<SymptomSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Symptom> _selectedSymptoms = [];
  bool _hasText = false;

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() {
      final hasText = _searchController.text.isNotEmpty;
      if (hasText != _hasText) {
        setState(() => _hasText = hasText);
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggleSymptom(Symptom symptom) {
    setState(() {
      final exists = _selectedSymptoms.any(
        (s) => s.nameLocal == symptom.nameLocal,
      );
      if (exists) {
        _selectedSymptoms.removeWhere((s) => s.nameLocal == symptom.nameLocal);
      } else {
        _selectedSymptoms.add(symptom);
      }
    });
  }

  void _onSearchSubmitted(String query) {
    setState(() {
      if (!_selectedSymptoms.any((element) => element.nameLocal == query)) {
        _selectedSymptoms.add(Symptom(nameLocal: query));
      }
      context.read<DiagnosisCubit>().searchSymptoms(query);
    });
  }

  void _proceed() {
    if (_selectedSymptoms.isEmpty) {
      Utils.showToast(
        context,
        message: S.of(context).diagSelectAtLeastOneSymptom,
        level: -1,
      ); // -1 = failure
      return;
    }
    context.read<DiagnosisCubit>().selectSymptoms(symptoms: _selectedSymptoms);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: BlocListener<DiagnosisCubit, DiagnosisState>(
            listener: (context, state) {
              if (state.op.isFailure) {
                Utils.showToast(
                  context,
                  message: state.statusMessage,
                  level: Utils.mapOp(state.op),
                );
              }
              if (state.op.isSuccess) {
                context.goNamed(RoutePaths.followUpQuestions);
              }
            },
            listenWhen: (previous, current) => !current.op.isNeutral,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: colorScheme.onSurface,
            ),
          ),
          onPressed: () {
            context.read<DiagnosisCubit>().reset();
            context.goNamed(RoutePaths.homeScreen);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DiagnosisPageHeader(
                      title: S.of(context).symptomSearchTitle,
                      subtitle: S.of(context).symptomSearchSubtitle,
                      icon: Icons.search_rounded,
                    ),
                    const SizedBox(height: 24),

                    // Search Field
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest.withValues(
                          alpha: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: colorScheme.outline.withValues(alpha: 0.3),
                        ),
                      ),
                      child: BlocBuilder<DiagnosisCubit, DiagnosisState>(
                        builder: (context, state) => TextField(
                          textInputAction: TextInputAction.search,
                          controller: _searchController,
                          onSubmitted: state.searchOp.isLoading
                              ? null
                              : _onSearchSubmitted,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: colorScheme.onSurface,
                          ),
                          decoration: InputDecoration(
                            hintText: S.of(context).symptomSearchHint,
                            hintStyle: theme.textTheme.bodyLarge?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: colorScheme.onSurfaceVariant,
                            ),

                            suffixIcon: _hasText
                                ? IconButton(
                                    icon: Icon(
                                      Icons.clear,
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                                    onPressed: () {
                                      _searchController.clear();
                                      context
                                          .read<DiagnosisCubit>()
                                          .searchSymptoms('');
                                    },
                                  )
                                : null,
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildSelectedSection(theme, colorScheme),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Search Results (scrolls; shrinks when keyboard opens)
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: BlocBuilder<DiagnosisCubit, DiagnosisState>(
                  builder: (context, state) {
                    if (state.searchOp.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (!_hasText) {
                      return const SizedBox.shrink();
                    }

                    if (state.searchResults.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Center(
                          child: Text(
                            S.of(context).noSymptomsFound,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      padding: const EdgeInsets.only(
                        right: 24.0,
                        left: 24.0,
                        top: 8,
                        bottom: 8,
                      ),
                      itemCount: state.searchResults.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final symptom = state.searchResults[index];
                        final isSelected = _selectedSymptoms.any(
                          (s) => s.id == symptom.id,
                        );
                        return _SymptomResultTile(
                          symptom: symptom,
                          isSelected: isSelected,
                          onTap: () => _toggleSymptom(symptom),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
          child: BlocBuilder<DiagnosisCubit, DiagnosisState>(
            builder: (context, state) => Row(
              mainAxisAlignment: (state.followUpProgress > 0)
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.center,
              children: [
                CustomButton(
                  width:
                      MediaQuery.of(context).size.width *
                      ((state.followUpProgress > 0) ? 0.4 : 0.7),
                  text: S.of(context).continueBtn,
                  onPressed: state.op.isLoading ? null : _proceed,
                ),
                if (state.followUpProgress > 0)
                  CustomButton(
                    width: MediaQuery.of(context).size.width * 0.4,
                    text: S.of(context).NoMoreSymptoms,
                    onPressed: state.op.isLoading
                        ? null
                        : () {
                            context.read<DiagnosisCubit>().selectSymptoms(
                              symptoms: [Symptom(nameLocal: "no")],
                            );
                          },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedSection(ThemeData theme, ColorScheme colorScheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: DiagnosisSectionLabel(
            label: S.of(context).selectedSymptomsLabel,
          ),
        ),
        if (_selectedSymptoms.isEmpty)
          Text(
            S.of(context).noSymptomsSelected,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          )
        else
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _selectedSymptoms
                .map(
                  (s) => SymptomChip(
                    label: s.nameLocal ?? "",
                    onRemove: () => _toggleSymptom(s),
                  ),
                )
                .toList(),
          ),
      ],
    );
  }
}

class _SymptomResultTile extends StatelessWidget {
  final Symptom symptom;
  final bool isSelected;
  final VoidCallback onTap;

  const _SymptomResultTile({
    required this.symptom,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primary.withValues(alpha: 0.1)
              : colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? colorScheme.primary
                : colorScheme.outline.withValues(alpha: 0.3),
            width: isSelected ? 1.5 : 1.0,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.medical_services_outlined,
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurfaceVariant,
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    symptom.nameLocal ?? "",
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.onSurface,
                    ),
                  ),
                  if ((symptom.summary ?? "").isNotEmpty)
                    Text(
                      (symptom.summary ?? ""),
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            Icon(
              isSelected
                  ? Icons.remove_circle_outline
                  : Icons.add_circle_outline,
              color: isSelected ? colorScheme.error : colorScheme.primary,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}

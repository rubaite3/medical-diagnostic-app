import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class SymptomQuestionsScreen extends StatefulWidget {
  final List<Symptom> symptoms;

  const SymptomQuestionsScreen({super.key, required this.symptoms});

  @override
  State<SymptomQuestionsScreen> createState() => _SymptomQuestionsScreenState();
}

class _SymptomQuestionsScreenState extends State<SymptomQuestionsScreen> {
  int _currentSymptomIndex = 0;

 
  final Map<String, Map<String, List<String>>> _allAnswers = {};

  @override
  void initState() {
    super.initState();
    _loadQuestionsForCurrentSymptom();
  }

  Symptom get _currentSymptom => widget.symptoms[_currentSymptomIndex];

  void _loadQuestionsForCurrentSymptom() {
    context.read<DiagnosisCubit>().getSymptomQuestions(_currentSymptom.id);
  }

  void _toggleOption(String questionId, String optionId, bool isSingle) {
    setState(() {
      final symptomId = _currentSymptom.id;
      _allAnswers[symptomId] ??= {};
      _allAnswers[symptomId]![questionId] ??= [];

      final current = _allAnswers[symptomId]![questionId]!;
      if (isSingle) {
        _allAnswers[symptomId]![questionId] = [optionId];
      } else {
        if (current.contains(optionId)) {
          current.remove(optionId);
        } else {
          current.add(optionId);
        }
      }
    });
  }

  Future<void> _submitCurrentSymptom() async {
    final symptomId = _currentSymptom.id;
    final symptomAnswerMap = _allAnswers[symptomId] ?? {};

    final answers = symptomAnswerMap.entries
        .map((e) => SymptomAnswer(
              questionId: e.key,
              selectedOptionIds: e.value,
            ))
        .toList();

    await context.read<DiagnosisCubit>().submitSymptomAnswers(symptomId, answers);

    if (!mounted) return;
    final state = context.read<DiagnosisCubit>().state;
    if (state.op.isFailure) {
      Utils.showToast(context,
          message: state.statusMessage, level: -1);
      return;
    }

    if (_currentSymptomIndex < widget.symptoms.length - 1) {
      setState(() => _currentSymptomIndex++);
      _loadQuestionsForCurrentSymptom();
    } else {
      
      await context.read<DiagnosisCubit>().getNextFollowUp();
      if (!mounted) return;
      context.goNamed(RoutePaths.followUpQuestions);
    }
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
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: colorScheme.onSurface),
          onPressed: () => context.pop(),
        ),
        title: Text(
          "${_currentSymptomIndex + 1} / ${widget.symptoms.length}",
          style: theme.textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocConsumer<DiagnosisCubit, DiagnosisState>(
          listenWhen: (prev, curr) =>
              !curr.op.isNeutral && !curr.op.isLoading,
          listener: (context, state) {
            if (state.op.isFailure) {
              Utils.showToast(context,
                  message: state.statusMessage,
                  level: Utils.mapOp(state.op));
            }
          },
          builder: (context, state) {
            if (state.op.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 24.0, vertical: 16),
              child: Column(
                children: [
                  DiagnosisPageHeader(
                    title: _currentSymptom.name,
                    subtitle: DiagnosisStrings.symptomQuestionsSubtitle,
                    icon: Icons.quiz_outlined,
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: state.currentQuestions.isEmpty
                        ? Center(
                            child: Text(
                              "No questions available for this symptom.",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : ListView.separated(
                            itemCount: state.currentQuestions.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 16),
                            itemBuilder: (context, index) {
                              final question = state.currentQuestions[index];
                              final isSingle = question.type ==
                                      'single_choice' ||
                                  question.type == 'yes_no';
                              final selected = _allAnswers[_currentSymptom.id]
                                      ?[question.id] ??
                                  [];
                              return QuestionCard(
                                question: question,
                                selectedIds: selected,
                                onOptionToggled: (optId) => _toggleOption(
                                    question.id, optId, isSingle),
                              );
                            },
                          ),
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    text: _currentSymptomIndex < widget.symptoms.length - 1
                        ? DiagnosisStrings.nextSymptomBtn
                        : DiagnosisStrings.submitAnswersBtn,
                    onPressed: state.op.isLoading ? null : _submitCurrentSymptom,
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
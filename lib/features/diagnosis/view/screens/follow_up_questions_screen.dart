import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/auth/view/widgets/custom_button.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class FollowUpQuestionsScreen extends StatefulWidget {
  const FollowUpQuestionsScreen({super.key});

  @override
  State<FollowUpQuestionsScreen> createState() =>
      _FollowUpQuestionsScreenState();
}

class _FollowUpQuestionsScreenState extends State<FollowUpQuestionsScreen> {
  List<String> _selectedOptionIds = [];

  @override
  void initState() {
    super.initState();

    final state = context.read<DiagnosisCubit>().state;
    if (state.currentFollowUp == null) {
      context.read<DiagnosisCubit>().getNextFollowUp();
    }
  }

  void _toggleOption(String optionId, bool isSingle) {
    setState(() {
      if (isSingle) {
        _selectedOptionIds = [optionId];
      } else {
        if (_selectedOptionIds.contains(optionId)) {
          _selectedOptionIds.remove(optionId);
        } else {
          _selectedOptionIds.add(optionId);
        }
      }
    });
  }

  Future<void> _submitAnswer({bool isForce = false}) async {
    final state = context.read<DiagnosisCubit>().state;
    final question = state.currentFollowUp?.question;
    if (question == null) return;

    if (_selectedOptionIds.isEmpty) {
      Utils.showToast(
        context,
        message: S.of(context).diagPleaseSelectAnswer,
        level: -1,
      );
      return;
    }

    await context.read<DiagnosisCubit>().submitFollowUpAnswer(
      question.id,
      _selectedOptionIds.first,
      isForce: isForce,
    );

    // if (!mounted) return;

    // final afterSubmit = context.read<DiagnosisCubit>().state;
    // if (afterSubmit.op.isFailure) return;

    // await context.read<DiagnosisCubit>().getNextFollowUp();

    // if (!mounted) return;
    // final newState = context.read<DiagnosisCubit>().state;

    // if (newState.currentFollowUp?.responseType == 'diagnosis') {
    //   context.goNamed(RoutePaths.preliminaryResults);
    // } else {
    //   setState(() => _selectedOptionIds = []);
    // }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocConsumer<DiagnosisCubit, DiagnosisState>(
      listenWhen: (prev, curr) => !curr.op.isNeutral && !curr.op.isLoading,
      listener: (context, state) {
        if (state.op.isFailure) {
          Utils.showToast(
            context,
            message: state.statusMessage,
            level: Utils.mapOp(state.op),
          );
        }
        if (state.op.isSuccess) {
          setState(() {
            _selectedOptionIds = [];
          });
          if ((state.currentFollowUp?.responseType ?? "") == "diagnosis") {
            context.goNamed(RoutePaths.preliminaryResults);
          }
          if ((state.currentFollowUp?.responseType ?? "") ==
              "need_more_symptoms") {
            Utils.showToast(
              context,
              message: state.currentFollowUp?.question?.text ?? "",
              level: Utils.mapOp(state.op),
              duration: 10,
            );
            context.goNamed(RoutePaths.symptomSearch);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: colorScheme.onSurface,
              ),
              onPressed: () {
                context.read<DiagnosisCubit>().reset();
                context.goNamed(RoutePaths.homeScreen);
              },
            ),
          ),
          body: SafeArea(
            child: _buildContent(context, state, theme, colorScheme),
          ),
        );
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    DiagnosisState state,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    final followUp = state.currentFollowUp;
    final question = followUp?.question;

    if ((followUp == null || question == null) &&
        (state.currentFollowUp?.responseType ?? "") != "diagnosis") {
      return DiagnosisErrorWidget(
        message: S.of(context).errorGeneral,
        onRetry: () => context.read<DiagnosisCubit>().getNextFollowUp(),
      );
    }

    final isSingle =
        (question?.type ?? "") == 'single_choice' ||
        (question?.type ?? "") == 'yes_no';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Column(
        children: [
          // Progress Bar
          FollowUpProgressBar(
            current: state.followUpProgress,
            total: state.currentFollowUp?.total ?? 0,
          ),
          const SizedBox(height: 24),

          DiagnosisPageHeader(
            title: S.of(context).followUpTitle,
            subtitle: S.of(context).followUpSubtitle,
            icon: Icons.question_answer_outlined,
          ),
          const SizedBox(height: 24),

          Expanded(
            child: SingleChildScrollView(
              child:
                  ((state.currentFollowUp?.responseType ?? "") ==
                      "need_more_symptoms")
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            question?.text ?? "",
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 12),
                          CustomButton(
                            text: S.of(context).symptomSearchHint,
                            onPressed: () {
                              context.goNamed(RoutePaths.symptomSearch);
                            },
                          ),
                        ],
                      ),
                    )
                  : QuestionCard(
                      question:
                          question ??
                          Question(id: "", text: "", type: "", options: []),
                      selectedIds: _selectedOptionIds,
                      onOptionToggled: (optId) =>
                          _toggleOption(optId, isSingle),
                    ),
            ),
          ),

          const SizedBox(height: 16),
          if ((state.currentFollowUp?.responseType ?? "") !=
              "need_more_symptoms")
            BlocSelector<DiagnosisCubit, DiagnosisState, bool>(
              selector: (state) => state.followUpProgress > 6,
              builder: (context, isMoreThanSevenQs) => isMoreThanSevenQs
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomButton(
                            text: S.of(context).submitFollowUpBtn,
                            onPressed: state.op.isLoading
                                ? null
                                : _submitAnswer,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomButton(
                            text: S.of(context).DiagnoseNow,
                            onPressed: state.op.isLoading
                                ? null
                                : () {
                                    _submitAnswer(isForce: true);
                                  },
                          ),
                        ),
                      ],
                    )
                  : CustomButton(
                      text: S.of(context).submitFollowUpBtn,
                      onPressed: state.op.isLoading ? null : _submitAnswer,
                    ),
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

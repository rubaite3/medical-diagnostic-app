import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';

import '../../../../core/navigation/route_paths.dart';
import '../../controllers/available_llms_cubit/available_llms_cubit.dart';
import '../../controllers/diagnosis_state.dart';
import '../../models/diagnosis_models.dart';

class AvailableLlmsScreen extends StatefulWidget {
  const AvailableLlmsScreen({super.key});

  @override
  State<AvailableLlmsScreen> createState() => _AvailableLlmsScreenState();
}

class _AvailableLlmsScreenState extends State<AvailableLlmsScreen> {
  @override
  void initState() {
    super.initState();
    _availableLlmsCubit.loadLLMs();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorScheme.onSurface,
          ),
          onPressed: () {
            context.read<DiagnosisCubit>().reset();
            context.pop();
          },
        ),
        title: BlocListener<DiagnosisCubit, DiagnosisState>(
          listenWhen: (previous, current) => !current.op.isNeutral,
          listener: (context, state) {
            Utils.showToast(
              context,
              message: state.statusMessage,
              level: Utils.mapOp(state.op),
            );
            if (state.op.isSuccess) {
              context.goNamed(RoutePaths.symptomSearch);
              context.read<AuthBloc>().add(AuthEvent.getProfile());
            }
          },

          child: const Text("Available LLMs (optional)"),
        ),
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            tooltip: "Refresh",
            onPressed: () => _availableLlmsCubit.loadLLMs(),
          ),
        ],
      ),
      body: BlocBuilder<AvailableLlmsCubit, AvailableLlmsState>(
        bloc: _availableLlmsCubit,
        builder: (context, state) {
          if (state.op.isLoading && state.availableLLMs.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.op.isFailure && state.availableLLMs.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.cloud_off_rounded,
                    size: 48,
                    color: colorScheme.error,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    state.message.isNotEmpty
                        ? state.message
                        : S.of(context).failedToLoadLlm,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FilledButton.tonalIcon(
                    onPressed: () => _availableLlmsCubit.loadLLMs(),
                    icon: const Icon(Icons.refresh_rounded),
                    label: Text(S.of(context).retry),
                  ),
                ],
              ),
            );
          }
          if (state.availableLLMs.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.smart_toy_outlined,
                    size: 48,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    S.of(context).noLlmsAvailable,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 88),
            itemCount: state.availableLLMs.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final llm = state.availableLLMs[index];
              final isSelected = _selectedLlm == llm;
              final borderColor = isSelected
                  ? colorScheme.primary
                  : colorScheme.outline.withValues(alpha: 0.2);
              return Material(
                color: isSelected
                    ? colorScheme.primaryContainer.withValues(alpha: 0.5)
                    : colorScheme.surfaceContainerHighest.withValues(
                        alpha: 0.3,
                      ),
                borderRadius: BorderRadius.circular(14),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: () {
                    setState(() {
                      _selectedLlm = _selectedLlm == llm ? null : llm;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor,
                        width: isSelected ? 1.5 : 1,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: isSelected
                            ? colorScheme.primary
                            : colorScheme.surfaceContainerHighest,
                        child: Icon(
                          Icons.smart_toy_outlined,
                          color: isSelected
                              ? colorScheme.onPrimary
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                      title: Text(
                        llm,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      trailing: isSelected
                          ? Icon(Icons.check_circle, color: colorScheme.primary)
                          : null,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: BlocBuilder<DiagnosisCubit, DiagnosisState>(
        builder: (context, state) => FloatingActionButton.extended(
          onPressed: state.op.isLoading
              ? null
              : () {
                  final dCubit = context.read<DiagnosisCubit>();
                  final aUser = context.read<AuthBloc>().state.user;
                  context.read<DiagnosisCubit>().updateBaseline(
                    modelName: _selectedLlm,
                  );
                  if ((dCubit.state.patientJob ?? "").isNotEmpty) {
                    dCubit.startDiagnosis();
                  } else {
                    dCubit.startDiagnosis(
                      startDiagnosisRequest: StartDiagnosisRequest(
                        gender: aUser?.gender ?? "",
                        isSmoker: aUser?.isSmoker ?? false,
                        hasDiabetes: aUser?.hasDiabetes ?? false,
                        hasHypertension: aUser?.hasHypertension ?? false,
                        activityLevel: aUser?.activityLevel ?? "",
                        assessmentFor: "myself",
                        birthDate: aUser?.birthDate == null
                            ? null
                            : DateFormat(
                                'MM/dd/yyyy',
                              ).format(aUser!.birthDate!),
                        isAlcoholic: aUser?.drinksAlcohol ?? false,
                        isPregnant: aUser?.isPregnant ?? false,
                        patientJob: aUser?.occupation ?? "",
                        modelName: _selectedLlm,
                      ),
                    );
                  }
                  Utils.showToast(
                    context,
                    message: "Selected: $_selectedLlm",
                    level: 1,
                  );
                },
          icon: const Icon(Icons.check_rounded),
          label: Text(S.of(context).submit),
        ),
      ),
    );
  }

  final _availableLlmsCubit = AvailableLlmsCubit();
  String? _selectedLlm;
}

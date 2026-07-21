import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';
import '../../../../core/navigation/route_paths.dart';
import '../../../auth/controllers/auth_bloc/auth_bloc.dart';
import '../widgets/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final userName = state.user?.fullName?.split(' ').first ?? "User";

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Badge(
                        label: const Text("2"),
                        isLabelVisible: true,
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: colorScheme.onSurface,
                          ),
                          onPressed: () {
                            context.pushNamed(RoutePaths.notifications);
                          },
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const HomeHeroImage(),
                  const Spacer(flex: 1),
                  Text(
                    "${S.of(context).welcome}$userName",
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    S.of(context).homeIntro,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(flex: 1),
                  BlocListener<DiagnosisCubit, DiagnosisState>(
                    listenWhen: (previous, current) =>
                        current.op.isFailure ||
                        (previous.sessionId == null &&
                            current.sessionId != null),
                    listener: (context, state) {
                      Utils.showToast(
                        context,
                        message: state.statusMessage,
                        level: Utils.mapOp(state.op),
                      );
                      if (!state.op.isFailure) {
                        context.pushNamed(RoutePaths.symptomSearch);
                      }
                    },
                    child: HomeActionButton(
                      text: S.of(context).startDiagnosis,
                      icon: Icons.auto_awesome,
                      onPressed: () {
                        context.read<DiagnosisCubit>().reset();
                        if (context.read<AuthBloc>().isProfileNull()) {
                          context.pushNamed(RoutePaths.baselineGender);
                        } else {
                          context.read<DiagnosisCubit>().startDiagnosis();
                        }
                      },
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            );
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.goNamed(RoutePaths.tempSessionPreview);
      //   },
      // ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/consts/strings.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

class DiagnosisPaymentScreen extends StatelessWidget {
  const DiagnosisPaymentScreen({super.key});

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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            children: [
              DiagnosisPageHeader(
                title: DiagnosisStrings.paymentTitle,
                subtitle: DiagnosisStrings.paymentSubtitle,
                icon: Icons.description_outlined,
              ),
              const SizedBox(height: 32),

              // Features list
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest
                      .withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: colorScheme.outline.withValues(alpha: 0.25)),
                ),
                child: Column(
                  children: const [
                    PaymentFeatureRow(
                        text: DiagnosisStrings.paymentFeature1),
                    PaymentFeatureRow(
                        text: DiagnosisStrings.paymentFeature2),
                    PaymentFeatureRow(
                        text: DiagnosisStrings.paymentFeature3),
                    PaymentFeatureRow(
                        text: DiagnosisStrings.paymentFeature4),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Price display
              Text(
                DiagnosisStrings.paymentAmount,
                style: theme.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                DiagnosisStrings.paymentCancelAnytime,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const Spacer(),

              // Stripe Payment Button
              BlocBuilder<DiagnosisCubit, DiagnosisState>(
                builder: (context, state) {
                  return _StripePayButton(
                    isLoading: state.op.isLoading,
                    onPressed: () async {
                      // TODO: Integrate Stripe SDK here.
                      // On successful payment, call getReport then navigate.
                      await context.read<DiagnosisCubit>().getReport();
                      if (context.mounted) {
                        context.goNamed(RoutePaths.fullReport);
                      }
                    },
                  );
                },
              ),

              const SizedBox(height: 12),

              // Secure badge
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_outline,
                      size: 14, color: colorScheme.onSurfaceVariant),
                  const SizedBox(width: 6),
                  Text(
                    DiagnosisStrings.paymentSecure,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}


class _StripePayButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const _StripePayButton({
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF635BFF), 
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? const SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2.5,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
           
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "stripe",
                      style: TextStyle(
                        color: Color(0xFF635BFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    DiagnosisStrings.paymentBtn,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

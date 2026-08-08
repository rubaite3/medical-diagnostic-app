import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import 'package:medical_diagnostic_app1/core/services/stripe_service.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_cubit.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/payment_cubit/payment_cubit.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/view/widgets/diagnosis_widgets.dart';

import '../../../../core/utils/utils.dart';

class DiagnosisPaymentScreen extends StatefulWidget {
  const DiagnosisPaymentScreen({super.key, required this.sessionId});
  final String sessionId;

  @override
  State<DiagnosisPaymentScreen> createState() => _DiagnosisPaymentScreenState();
}

class _DiagnosisPaymentScreenState extends State<DiagnosisPaymentScreen> {
  @override
  void initState() {
    super.initState();
    _paymentCubit = PaymentCubit(widget.sessionId);
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
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorScheme.onSurface,
          ),
          onPressed: () {
            context.read<DiagnosisCubit>().reset();
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            children: [
              DiagnosisPageHeader(
                title: S.of(context).paymentTitle,
                subtitle: S.of(context).paymentSubtitle,
                icon: Icons.description_outlined,
              ),
              const SizedBox(height: 32),

              // Features list
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: colorScheme.outline.withValues(alpha: 0.25),
                  ),
                ),
                child: Column(
                  children: [
                    PaymentFeatureRow(text: S.of(context).paymentFeature1),
                    PaymentFeatureRow(text: S.of(context).paymentFeature2),
                    PaymentFeatureRow(text: S.of(context).paymentFeature3),
                    PaymentFeatureRow(text: S.of(context).paymentFeature4),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Price display
              Text(
                 "\$${S.of(context).paymentAmount}",
                style: theme.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                S.of(context).paymentCancelAnytime,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const Spacer(),

              // Stripe Payment Button
              BlocConsumer<PaymentCubit, PaymentState>(
                bloc: _paymentCubit,
                builder: (context, state) {
                  return _StripePayButton(
                    isLoading: state.op.isLoading,
                    onPressed: () {
                      _paymentCubit.createPaymentIntent();
                    },
                  );
                },
                listener: (BuildContext context, PaymentState state) {
                  if (state.statusMessage.isNotEmpty) {
                    Utils.showToast(
                      context,
                      message: state.statusMessage,
                      level: Utils.mapOp(state.op),
                    );
                  }
                  if (state.op.isSuccess) {
                    context.goNamed(
                      RoutePaths.fullReport,
                      queryParameters: {"sessionId": widget.sessionId},
                    );
                  }
                },
              ),

              const SizedBox(height: 12),

              // Secure badge
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 14,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    S.of(context).paymentSecure,
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

  late final PaymentCubit _paymentCubit;
}

class _StripePayButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const _StripePayButton({required this.isLoading, required this.onPressed});

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
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      S.of(context).stripeBrand,
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
                    S.of(context).paymentBtn,
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

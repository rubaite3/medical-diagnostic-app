import 'package:flutter_stripe/flutter_stripe.dart';

/// Result of a Stripe payment attempt.
class StripePaymentResult {
  final bool success;
  final String? errorMessage;

  const StripePaymentResult({required this.success, this.errorMessage});

  bool get isSuccess => success;
  bool get isCancelled => !success && errorMessage == null;
}

class StripeService {
  StripeService._();

  static final StripeService instance = StripeService._();

  bool _initialized = false;

  /// Initialize Stripe with your publishable key.
  /// Call this once during app startup (e.g. in main()).
  Future<void> init(String publishableKey) async {
    if (_initialized) return;
    Stripe.publishableKey = publishableKey;
    await Stripe.instance.applySettings();
    _initialized = true;
  }

  Future<StripePaymentResult> payWithClientSecret(String clientSecret) async {
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          merchantDisplayName: 'Vitalia Payment interface',
          allowsDelayedPaymentMethods: true,
          paymentIntentClientSecret: clientSecret,
        ),
      );

      await Stripe.instance.presentPaymentSheet();

      return const StripePaymentResult(success: true);
    } catch (e) {
      if (e is StripeException) {
        final code = e.error.code;
        if (code == FailureCode.Canceled) {
          return const StripePaymentResult(success: false);
        }
        return StripePaymentResult(
          success: false,
          errorMessage: e.error.localizedMessage ?? e.error.code.name,
        );
      }
      return StripePaymentResult(success: false, errorMessage: e.toString());
    }
  }
}

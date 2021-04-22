import '../tdapi.dart';

/// Contains the result of a payment request
class PaymentResult extends TdObject {
  PaymentResult({required this.success, required this.verificationUrl});

  /// [success] True, if the payment request was successful; otherwise the
  /// verification_url will be not empty
  final bool success;

  /// [verificationUrl] URL for additional payment credentials verification
  final String verificationUrl;

  static const String CONSTRUCTOR = 'paymentResult';

  static PaymentResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentResult(
        success: json['success'], verificationUrl: json['verification_url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'success': this.success,
        'verification_url': this.verificationUrl,
        '@type': CONSTRUCTOR
      };
}

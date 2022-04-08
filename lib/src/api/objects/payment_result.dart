import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the result of a payment request
@immutable
class PaymentResult extends TdObject {
  const PaymentResult({
    required this.success,
    required this.verificationUrl,
  });

  /// [success] True, if the payment request was successful; otherwise the
  /// verification_url will be non-empty
  final bool success;

  /// [verificationUrl] URL for additional payment credentials verification
  final String verificationUrl;

  static const String constructor = 'paymentResult';

  static PaymentResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentResult(
      success: json['success'],
      verificationUrl: json['verification_url'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'success': success,
        'verification_url': verificationUrl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

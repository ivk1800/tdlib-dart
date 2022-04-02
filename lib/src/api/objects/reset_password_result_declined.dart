import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The password reset request was declined
class ResetPasswordResultDeclined extends ResetPasswordResult {
  ResetPasswordResultDeclined({required this.retryDate});

  /// [retryDate] Point in time (Unix timestamp) when the password reset can be
  /// retried
  final int retryDate;

  static const String CONSTRUCTOR = 'resetPasswordResultDeclined';

  static ResetPasswordResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultDeclined(retryDate: json['retry_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'retry_date': this.retryDate, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

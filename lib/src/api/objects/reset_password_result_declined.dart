import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The password reset request was declined
@immutable
class ResetPasswordResultDeclined extends ResetPasswordResult {
  const ResetPasswordResultDeclined({
    required this.retryDate,
  });

  /// [retryDate] Point in time (Unix timestamp) when the password reset can be
  /// retried
  final int retryDate;

  static const String constructor = 'resetPasswordResultDeclined';

  static ResetPasswordResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultDeclined(
      retryDate: json['retry_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'retry_date': retryDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

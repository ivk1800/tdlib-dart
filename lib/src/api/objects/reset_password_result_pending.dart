import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The password reset request is pending
@immutable
class ResetPasswordResultPending extends ResetPasswordResult {
  const ResetPasswordResultPending({
    required this.pendingResetDate,
  });

  /// [pendingResetDate] Point in time (Unix timestamp) after which the password
  /// can be reset immediately using resetPassword
  final int pendingResetDate;

  static const String constructor = 'resetPasswordResultPending';

  static ResetPasswordResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultPending(
      pendingResetDate: json['pending_reset_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pending_reset_date': pendingResetDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

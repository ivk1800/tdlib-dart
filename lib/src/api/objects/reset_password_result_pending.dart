import '../tdapi.dart';

/// The password reset request is pending
class ResetPasswordResultPending extends ResetPasswordResult {
  ResetPasswordResultPending({required this.pendingResetDate});

  /// [pendingResetDate] Point in time (Unix timestamp) after which the password
  /// can be reset immediately using resetPassword
  final int pendingResetDate;

  static const String CONSTRUCTOR = 'resetPasswordResultPending';

  static ResetPasswordResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultPending(
        pendingResetDate: json['pending_reset_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'pending_reset_date': this.pendingResetDate, '@type': CONSTRUCTOR};
}

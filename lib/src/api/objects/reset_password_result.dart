import '../tdapi.dart';

/// Represents result of 2-step verification password reset
abstract class ResetPasswordResult extends TdObject {
  const ResetPasswordResult();

  static const String CONSTRUCTOR = 'resetPasswordResult';

  /// Inherited by:
  /// [ResetPasswordResultOk]
  /// [ResetPasswordResultPending]
  /// [ResetPasswordResultDeclined]
  static ResetPasswordResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ResetPasswordResultOk.CONSTRUCTOR:
        return ResetPasswordResultOk.fromJson(json);
      case ResetPasswordResultPending.CONSTRUCTOR:
        return ResetPasswordResultPending.fromJson(json);
      case ResetPasswordResultDeclined.CONSTRUCTOR:
        return ResetPasswordResultDeclined.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}

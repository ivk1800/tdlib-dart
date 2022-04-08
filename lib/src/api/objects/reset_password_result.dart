import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of 2-step verification password reset
@immutable
abstract class ResetPasswordResult extends TdObject {
  const ResetPasswordResult();

  static const String constructor = 'resetPasswordResult';

  /// Inherited by:
  /// [ResetPasswordResultOk]
  /// [ResetPasswordResultPending]
  /// [ResetPasswordResultDeclined]
  static ResetPasswordResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ResetPasswordResultOk.constructor:
        return ResetPasswordResultOk.fromJson(json);
      case ResetPasswordResultPending.constructor:
        return ResetPasswordResultPending.fromJson(json);
      case ResetPasswordResultDeclined.constructor:
        return ResetPasswordResultDeclined.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

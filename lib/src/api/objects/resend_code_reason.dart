import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a code needs to be re-sent
@immutable
abstract class ResendCodeReason extends TdObject {
  const ResendCodeReason();

  static const String constructor = 'resendCodeReason';

  /// Inherited by:
  /// [ResendCodeReasonUserRequest]
  /// [ResendCodeReasonVerificationFailed]
  static ResendCodeReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ResendCodeReasonUserRequest.constructor:
        return ResendCodeReasonUserRequest.fromJson(json);
      case ResendCodeReasonVerificationFailed.constructor:
        return ResendCodeReasonVerificationFailed.fromJson(json);
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

import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the availability of a temporary password, which
/// can be used for payments
@immutable
class TemporaryPasswordState extends TdObject {
  const TemporaryPasswordState({
    required this.hasPassword,
    required this.validFor,
  });

  /// [hasPassword] True, if a temporary password is available
  final bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  final int validFor;

  static const String constructor = 'temporaryPasswordState';

  static TemporaryPasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemporaryPasswordState(
      hasPassword: json['has_password'] as bool,
      validFor: json['valid_for'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_password': hasPassword,
        'valid_for': validFor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

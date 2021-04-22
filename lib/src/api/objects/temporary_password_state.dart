import '../tdapi.dart';

/// Returns information about the availability of a temporary password, which
/// can be used for payments
class TemporaryPasswordState extends TdObject {
  TemporaryPasswordState({required this.hasPassword, required this.validFor});

  /// [hasPassword] True, if a temporary password is available
  final bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  final int validFor;

  static const String CONSTRUCTOR = 'temporaryPasswordState';

  static TemporaryPasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemporaryPasswordState(
        hasPassword: json['has_password'], validFor: json['valid_for']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'has_password': this.hasPassword,
        'valid_for': this.validFor,
        '@type': CONSTRUCTOR
      };
}

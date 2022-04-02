import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns a 2-step verification recovery email address that was previously
/// set up. This method can be used to verify a password provided by the user
/// Returns [RecoveryEmailAddress]
class GetRecoveryEmailAddress extends TdFunction {
  GetRecoveryEmailAddress({required this.password});

  /// [password] The password for the current user
  final String password;

  static const String CONSTRUCTOR = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'password': this.password, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

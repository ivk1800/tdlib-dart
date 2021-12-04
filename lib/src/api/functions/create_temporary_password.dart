import '../tdapi.dart';

/// Creates a new temporary password for processing payments
/// Returns [TemporaryPasswordState]
class CreateTemporaryPassword extends TdFunction {
  CreateTemporaryPassword({required this.password, required this.validFor});

  /// [password] Persistent user password
  final String password;

  /// [validFor] Time during which the temporary password will be valid, in
  /// seconds; must be between 60 and 86400
  final int validFor;

  static const String CONSTRUCTOR = 'createTemporaryPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'password': this.password,
        'valid_for': this.validFor,
        '@type': CONSTRUCTOR
      };
}

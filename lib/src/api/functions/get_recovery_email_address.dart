import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a 2-step verification recovery email address that was previously
/// set up. This method can be used to verify a password provided by the user
/// Returns [RecoveryEmailAddress]
@immutable
class GetRecoveryEmailAddress extends TdFunction {
  const GetRecoveryEmailAddress({
    required this.password,
  });

  /// [password] The 2-step verification password for the current user
  final String password;

  static const String constructor = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the 2-step verification password for correctness. Works only when
/// the current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class CheckAuthenticationPassword extends TdFunction {
  const CheckAuthenticationPassword({
    required this.password,
  });

  /// [password] The 2-step verification password to check
  final String password;

  static const String constructor = 'checkAuthenticationPassword';

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

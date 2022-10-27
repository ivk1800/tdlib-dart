import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends an authentication code to the user. Works only when the current
/// authorization state is authorizationStateWaitCode, the next_code_type of
/// the result is not null and the server-specified timeout has passed, or
/// when the current authorization state is authorizationStateWaitEmailCode
/// Returns [Ok]
@immutable
class ResendAuthenticationCode extends TdFunction {
  const ResendAuthenticationCode();

  static const String constructor = 'resendAuthenticationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

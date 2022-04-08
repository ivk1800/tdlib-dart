import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Requests to send a password recovery code to an email address that was
/// previously set up. Works only when the current authorization state is
/// authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class RequestAuthenticationPasswordRecovery extends TdFunction {
  const RequestAuthenticationPasswordRecovery();

  static const String constructor = 'requestAuthenticationPasswordRecovery';

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

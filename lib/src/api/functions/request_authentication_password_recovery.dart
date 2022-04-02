import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Requests to send a password recovery code to an email address that was
/// previously set up. Works only when the current authorization state is
/// authorizationStateWaitPassword
/// Returns [Ok]
class RequestAuthenticationPasswordRecovery extends TdFunction {
  RequestAuthenticationPasswordRecovery();

  static const String CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

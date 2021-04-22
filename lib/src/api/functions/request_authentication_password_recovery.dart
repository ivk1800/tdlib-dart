import '../tdapi.dart';

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
}

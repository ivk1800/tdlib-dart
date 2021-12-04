import '../tdapi.dart';

/// Requests to send a 2-step verification password recovery code to an email
/// address that was previously set up
/// Returns [EmailAddressAuthenticationCodeInfo]
class RequestPasswordRecovery extends TdFunction {
  RequestPasswordRecovery();

  static const String CONSTRUCTOR = 'requestPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}

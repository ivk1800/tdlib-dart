import '../tdapi.dart';

/// Re-sends an authentication code to the user. Works only when the current
/// authorization state is authorizationStateWaitCode and the next_code_type
/// of the result is not null
/// Returns [Ok]
class ResendAuthenticationCode extends TdFunction {
  ResendAuthenticationCode();

  static const String CONSTRUCTOR = 'resendAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}

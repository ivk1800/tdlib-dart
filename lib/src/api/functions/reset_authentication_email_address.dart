import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resets the login email address. May return an error with a message
/// "TASK_ALREADY_EXISTS" if reset is still pending. Works only when the
/// current authorization state is authorizationStateWaitEmailCode and
/// authorization_state.can_reset_email_address == true
/// Returns [Ok]
@immutable
class ResetAuthenticationEmailAddress extends TdFunction {
  const ResetAuthenticationEmailAddress();

  static const String constructor = 'resetAuthenticationEmailAddress';

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

import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the email address of the user and sends an authentication code to the
/// email address. Works only when the current authorization state is
/// authorizationStateWaitEmailAddress
/// Returns [Ok]
@immutable
class SetAuthenticationEmailAddress extends TdFunction {
  const SetAuthenticationEmailAddress({
    required this.emailAddress,
  });

  /// [emailAddress] The email address of the user
  final String emailAddress;

  static const String constructor = 'setAuthenticationEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns already available Telegram Passport elements suitable for
/// completing a Telegram Passport authorization form. Result can be received
/// only once for each authorization form
/// Returns [PassportElementsWithErrors]
@immutable
class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  const GetPassportAuthorizationFormAvailableElements({
    required this.authorizationFormId,
    required this.password,
  });

  /// [authorizationFormId] Authorization form identifier
  final int authorizationFormId;

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor =
      'getPassportAuthorizationFormAvailableElements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'authorization_form_id': authorizationFormId,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

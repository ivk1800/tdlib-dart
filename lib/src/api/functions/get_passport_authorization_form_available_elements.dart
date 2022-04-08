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
    required this.autorizationFormId,
    required this.password,
  });

  /// [autorizationFormId] Authorization form identifier
  final int autorizationFormId;

  /// [password] Password of the current user
  final String password;

  static const String constructor =
      'getPassportAuthorizationFormAvailableElements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'autorization_form_id': autorizationFormId,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

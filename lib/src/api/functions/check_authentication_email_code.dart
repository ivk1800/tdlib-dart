import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the authentication of an email address. Works only when the current
/// authorization state is authorizationStateWaitEmailCode
/// Returns [Ok]
@immutable
class CheckAuthenticationEmailCode extends TdFunction {
  const CheckAuthenticationEmailCode({
    required this.code,
  });

  /// [code] Email address authentication to check
  final EmailAddressAuthentication code;

  static const String constructor = 'checkAuthenticationEmailCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

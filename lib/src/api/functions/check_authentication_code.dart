import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the authentication code. Works only when the current authorization
/// state is authorizationStateWaitCode
/// Returns [Ok]
@immutable
class CheckAuthenticationCode extends TdFunction {
  const CheckAuthenticationCode({
    required this.code,
  });

  /// [code] Authentication code to check
  final String code;

  static const String constructor = 'checkAuthenticationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

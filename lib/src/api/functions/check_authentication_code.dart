import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Checks the authentication code. Works only when the current authorization
/// state is authorizationStateWaitCode
/// Returns [Ok]
class CheckAuthenticationCode extends TdFunction {
  CheckAuthenticationCode({required this.code});

  /// [code] Authentication code to check
  final String code;

  static const String CONSTRUCTOR = 'checkAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'code': this.code, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

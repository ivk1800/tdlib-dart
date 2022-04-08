import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks the email address verification code for Telegram Passport
/// Returns [Ok]
@immutable
class CheckEmailAddressVerificationCode extends TdFunction {
  const CheckEmailAddressVerificationCode({
    required this.code,
  });

  /// [code] Verification code to check
  final String code;

  static const String constructor = 'checkEmailAddressVerificationCode';

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

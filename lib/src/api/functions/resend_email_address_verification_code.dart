import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resends the code to verify an email address to be added to a user's
/// Telegram Passport
/// Returns [EmailAddressAuthenticationCodeInfo]
@immutable
class ResendEmailAddressVerificationCode extends TdFunction {
  const ResendEmailAddressVerificationCode();

  static const String constructor = 'resendEmailAddressVerificationCode';

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

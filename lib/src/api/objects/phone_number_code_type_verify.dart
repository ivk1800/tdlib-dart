import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Verifies ownership of a phone number to be added to the user's Telegram
/// Passport
@immutable
class PhoneNumberCodeTypeVerify extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeVerify();

  static const String constructor = 'phoneNumberCodeTypeVerify';

  static PhoneNumberCodeTypeVerify? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PhoneNumberCodeTypeVerify();
  }

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

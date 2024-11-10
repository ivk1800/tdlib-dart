import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks ownership of a new phone number to change the user's authentication
/// phone number; for official Android and iOS applications only
@immutable
class PhoneNumberCodeTypeChange extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeChange();

  static const String constructor = 'phoneNumberCodeTypeChange';

  static PhoneNumberCodeTypeChange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PhoneNumberCodeTypeChange();
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

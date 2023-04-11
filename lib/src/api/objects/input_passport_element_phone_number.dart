import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's phone number
@immutable
class InputPassportElementPhoneNumber extends InputPassportElement {
  const InputPassportElementPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] The phone number to be saved
  final String phoneNumber;

  static const String constructor = 'inputPassportElementPhoneNumber';

  static InputPassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPhoneNumber(
      phoneNumber: json['phone_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

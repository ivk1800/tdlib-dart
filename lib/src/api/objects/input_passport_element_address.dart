import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's address
@immutable
class InputPassportElementAddress extends InputPassportElement {
  const InputPassportElementAddress({
    required this.address,
  });

  /// [address] The address to be saved
  final Address address;

  static const String constructor = 'inputPassportElementAddress';

  static InputPassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementAddress(
      address: Address.fromJson(json['address'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'address': address.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

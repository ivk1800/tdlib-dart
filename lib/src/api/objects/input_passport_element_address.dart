import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A Telegram Passport element to be saved containing the user's address
class InputPassportElementAddress extends InputPassportElement {
  InputPassportElementAddress({required this.address});

  /// [address] The address to be saved
  final Address address;

  static const String CONSTRUCTOR = 'inputPassportElementAddress';

  static InputPassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementAddress(
        address: Address.fromJson(json['address'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'address': this.address.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

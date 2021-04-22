import '../tdapi.dart';

/// A Telegram Passport element containing the user's address
class PassportElementAddress extends PassportElement {
  PassportElementAddress({required this.address});

  /// [address] Address
  final Address address;

  static const String CONSTRUCTOR = 'passportElementAddress';

  static PassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementAddress(address: Address.fromJson(json['address'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'address': this.address.toJson(), '@type': CONSTRUCTOR};
}

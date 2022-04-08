import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an address
@immutable
class Address extends TdObject {
  const Address({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postalCode,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [state] State, if applicable
  final String state;

  /// [city] City
  final String city;

  /// [streetLine1] First line of the address
  final String streetLine1;

  /// [streetLine2] Second line of the address
  final String streetLine2;

  /// [postalCode] Address postal code
  final String postalCode;

  static const String constructor = 'address';

  static Address? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Address(
      countryCode: json['country_code'],
      state: json['state'],
      city: json['city'],
      streetLine1: json['street_line1'],
      streetLine2: json['street_line2'],
      postalCode: json['postal_code'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_code': countryCode,
        'state': state,
        'city': city,
        'street_line1': streetLine1,
        'street_line2': streetLine2,
        'postal_code': postalCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

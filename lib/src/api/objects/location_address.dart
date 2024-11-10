import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an address of a location
@immutable
class LocationAddress extends TdObject {
  const LocationAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.street,
  });

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// [state] State, if applicable; empty if unknown
  final String state;

  /// [city] City; empty if unknown
  final String city;

  /// [street] The address; empty if unknown
  final String street;

  static const String constructor = 'locationAddress';

  static LocationAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LocationAddress(
      countryCode: json['country_code'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
      street: json['street'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'country_code': countryCode,
        'state': state,
        'city': city,
        'street': street,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

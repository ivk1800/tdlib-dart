import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a location of a business
@immutable
class BusinessLocation extends TdObject {
  const BusinessLocation({
    this.location,
    required this.address,
  });

  /// [location] The location; may be null if not specified
  final Location? location;

  /// [address] Location address; 1-96 characters
  final String address;

  static const String constructor = 'businessLocation';

  static BusinessLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?),
      address: json['address'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location?.toJson(),
        'address': address,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a location on planet Earth
@immutable
class Location extends TdObject {
  const Location({
    required this.latitude,
    required this.longitude,
    required this.horizontalAccuracy,
  });

  /// [latitude] Latitude of the location in degrees; as defined by the sender
  final double latitude;

  /// [longitude] Longitude of the location, in degrees; as defined by the
  /// sender
  final double longitude;

  /// [horizontalAccuracy] The estimated horizontal accuracy of the location, in
  /// meters; as defined by the sender. 0 if unknown
  final double horizontalAccuracy;

  static const String constructor = 'location';

  static Location? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Location(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      horizontalAccuracy: (json['horizontal_accuracy'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'latitude': latitude,
        'longitude': longitude,
        'horizontal_accuracy': horizontalAccuracy,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

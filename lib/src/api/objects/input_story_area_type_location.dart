import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a location
@immutable
class InputStoryAreaTypeLocation extends InputStoryAreaType {
  const InputStoryAreaTypeLocation({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'inputStoryAreaTypeLocation';

  static InputStoryAreaTypeLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

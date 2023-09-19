import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a location
@immutable
class StoryAreaTypeLocation extends StoryAreaType {
  const StoryAreaTypeLocation({
    required this.location,
  });

  /// [location] The location
  final Location location;

  static const String constructor = 'storyAreaTypeLocation';

  static StoryAreaTypeLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeLocation(
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

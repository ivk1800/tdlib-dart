import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area with information about weather
@immutable
class StoryAreaTypeWeather extends StoryAreaType {
  const StoryAreaTypeWeather({
    required this.temperature,
    required this.emoji,
    required this.backgroundColor,
  });

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  /// [backgroundColor] A color of the area background in the ARGB format
  final int backgroundColor;

  static const String constructor = 'storyAreaTypeWeather';

  static StoryAreaTypeWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeWeather(
      temperature: (json['temperature'] as num).toDouble(),
      emoji: json['emoji'] as String,
      backgroundColor: json['background_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temperature': temperature,
        'emoji': emoji,
        'background_color': backgroundColor,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

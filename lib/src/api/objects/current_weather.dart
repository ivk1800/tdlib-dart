import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current weather
@immutable
class CurrentWeather extends TdObject {
  const CurrentWeather({
    required this.temperature,
    required this.emoji,
  });

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  static const String constructor = 'currentWeather';

  static CurrentWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CurrentWeather(
      temperature: (json['temperature'] as num).toDouble(),
      emoji: json['emoji'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temperature': temperature,
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

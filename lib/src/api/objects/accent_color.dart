import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about supported accent color for user/chat name,
/// background of empty chat photo, replies to messages and link previews
@immutable
class AccentColor extends TdObject {
  const AccentColor({
    required this.id,
    required this.builtInAccentColorId,
    required this.lightThemeColors,
    required this.darkThemeColors,
  });

  /// [id] Accent color identifier
  final int id;

  /// [builtInAccentColorId] Identifier of a built-in color to use in places,
  /// where only one color is needed; 0-6
  final int builtInAccentColorId;

  /// [lightThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in light themes
  final List<int> lightThemeColors;

  /// [darkThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in dark themes
  final List<int> darkThemeColors;

  static const String constructor = 'accentColor';

  static AccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccentColor(
      id: json['id'] as int,
      builtInAccentColorId: json['built_in_accent_color_id'] as int,
      lightThemeColors: List<int>.from(
          ((json['light_theme_colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      darkThemeColors: List<int>.from(
          ((json['dark_theme_colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'built_in_accent_color_id': builtInAccentColorId,
        'light_theme_colors': lightThemeColors.map((item) => item).toList(),
        'dark_theme_colors': darkThemeColors.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

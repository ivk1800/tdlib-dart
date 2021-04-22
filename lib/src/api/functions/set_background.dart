import '../tdapi.dart';

/// Changes the background selected by the user; adds background to the list
/// of installed backgrounds
/// Returns [Background]
class SetBackground extends TdFunction {
  SetBackground(
      {required this.background,
      required this.type,
      required this.forDarkTheme});

  /// [background] The input background to use, null for filled backgrounds
  final InputBackground background;

  /// [type] Background type; null for default background. The method will
  /// return error 404 if type is null
  final BackgroundType type;

  /// [forDarkTheme] True, if the background is chosen for dark theme
  final bool forDarkTheme;

  static const String CONSTRUCTOR = 'setBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'background': this.background.toJson(),
        'type': this.type.toJson(),
        'for_dark_theme': this.forDarkTheme,
        '@type': CONSTRUCTOR
      };
}

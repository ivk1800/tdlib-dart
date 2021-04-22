import '../tdapi.dart';

/// The selected background has changed
class UpdateSelectedBackground extends Update {
  UpdateSelectedBackground({required this.forDarkTheme, this.background});

  /// [forDarkTheme] True, if background for dark theme has changed
  final bool forDarkTheme;

  /// [background] The new selected background; may be null
  final Background? background;

  static const String CONSTRUCTOR = 'updateSelectedBackground';

  static UpdateSelectedBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSelectedBackground(
        forDarkTheme: json['for_dark_theme'],
        background: Background.fromJson(json['background']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'for_dark_theme': this.forDarkTheme,
        'background': this.background?.toJson(),
        '@type': CONSTRUCTOR
      };
}

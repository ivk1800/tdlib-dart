import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The selected background has changed
@immutable
class UpdateSelectedBackground extends Update {
  const UpdateSelectedBackground({
    required this.forDarkTheme,
    this.background,
  });

  /// [forDarkTheme] True, if background for dark theme has changed
  final bool forDarkTheme;

  /// [background] The new selected background; may be null
  final Background? background;

  static const String constructor = 'updateSelectedBackground';

  static UpdateSelectedBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSelectedBackground(
      forDarkTheme: json['for_dark_theme'],
      background: Background.fromJson(json['background']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'for_dark_theme': forDarkTheme,
        'background': background?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
